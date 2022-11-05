/* 	
	Создание потоков со структурой контекста для переключения (entry.S), какой никакой работой с памятью,
	стеком и прочими потрохами.
	Планировщик потоков, использующий алгоритм Round Robin. Выполняется в 1 поток (на одном ядре), 
	внутренние "потоки" - это не потоки с точки зрения ОС.
	Работает по сигналу SIGALRM, с флагом SA_NODEFER - не препятствовать получению сигнала при его обработке. 
*/

#include "thread.h"

/* Higher 2 GB of 64 bit logical address space start from this address */
#define VIRTUAL_BASE	0xffffffff80000000

/* First address after "canonical hole", beginning of the middle mapping. */
#define HIGHER_BASE		0xffff800000000000

#define IOMAP_BITS		(1 << 16)
#define IOMAP_WORDS		(IOMAP_BITS / sizeof(unsigned long))

/* Kernel 64 bit code and data segment selectors. */
#define KERNEL_CS		0x08
#define KERNEL_DS		0x10

#define PAGE_BITS		12
#define PAGE_SIZE		(1 << PAGE_BITS)
#define PAGE_MASK		(PAGE_SIZE - 1)

#define VA(x) ((void *)((uintptr_t)x + HIGHER_BASE))
#define PA(x) ((uintptr_t)x - HIGHER_BASE);


static const int TIMESLICE 	= 5;                	// квант времени для работы потока (в тиках (прерываниях))
static int remained_rounds 	= 0;                    // осталось отработать тиков до переключения
static int INTERVAL_USEC 	= 50;					// продолжительность тика (микросек) + точность таймера 10 мкс (меньше 20 не работает, видимо только сам interrupt() около 10-20 мкс занимает)
													// ... и получается, что ОС вызывает обработчик во время работы еще предыдущего обработчика пока не переполнится стек вызовов ?
static int idle_counter 	= 0;					// используется при отсутствии заданий
static int ID 				= 100; 					// стартовый id потока (idle->id = 0)

static int PREEMPT_COUNT;                    		// разрешение вытеснения (static xранятся не в heap и не на stack, а в специальных сегментах памяти, которые называются .data и .bss (зависит от того инициализированы статические данные или нет))
													// неинициализированные идут в .bss (Block Started by Symbol*) - чето типа особая секция. Обычно загрузчик программ инициализирует bss область при загрузке приложения нулями (в данном случае можно просто = 0)
													// * название пошло от одной древней версии ассемблера, сейчас не имеет смысла (часто расшифровывают как Blank Static Space)
static struct list_head 	ready;					// round robin (карусель) - очередь АКТИВНЫХ потоков (заблокированные - в очередях мьютексов)
// static struct list_head 	blocked;				// непосредственно для алгоритма не необходим, нужен чтобы посмотреть дедлоки (которые - ответственность внешнего алгоритма, а не планировщика)
static struct lock 			queues_lock;			// блокировка доступа к списку активных потоков (round robin) + заблокированные

static struct thread 		*current;				// текущий поток
static struct thread 		*idle;					// поток, подключаемый когда нет активных ожидающих

struct switch_frame {								
	uint64_t rflags;
	uint64_t r15;
	uint64_t r14;
	uint64_t r13;
	uint64_t r12;
	uint64_t rbp;
	uint64_t rbx;
	uint64_t rip;
} __attribute__((packed));

// static inline void *va(uintptr_t phys)
// { return VA(phys); }

// static inline uintptr_t pa(const void *virt)
// { return PA(virt); }


/* TSS descriptor in the GDT has special format */ 
// struct tss {
// 	uint32_t rsrv0;
// 	uint64_t rsp[3];
// 	uint64_t rsrv1;
// 	uint64_t ist[7];
// 	uint64_t rsrv2;
// 	uint16_t rsrv3;
// 	uint16_t iomap_base;
// 	unsigned long iomap[IOMAP_WORDS + 1];
// } __attribute__((packed));

// static struct tss tss __attribute__((aligned (PAGE_SIZE)));




// statics в начало, т.к. их нет смысла объявлять в заголовочном файле
// static void cr3_write(uintptr_t phys)
// { __asm__ ("movq %0, %%cr3" : : "r"(phys)); }

static void thread_place(struct thread *me)
{
	lock(&current->lock);
	if (TRACE) printf("(SCHED) IN thread_place() (my id: %d)\n", me->id);
	if (current->state == THREAD_FINISHED) {
		current->state = THREAD_DEAD;
		notify_one(&current->cv);
	}
	unlock(&current->lock);

	current = me;
	remained_rounds = TIMESLICE;								// новый таймслайс начинается ТОЛЬКО тут (+ в начальном сетапе)

// 	tss.rsp[0] = (uint64_t)va(me->stack_phys +					// это хз че такое (служебная структура в памяти, которая определяет сегмент)
// 				(PAGE_SIZE << me->stack_order));				// чтобы писать в глоб.табл.дескрипторов чето-то такое - выделение страниц памяти потоку
// 	cr3_write(me->mm->cr3);
}

static void __rr_queue(struct list_head * list)					// что крутится в очереди
{
	struct list_head *head = list;
	lock(&queues_lock);

	printf("    running: %d, rr_queue -> ", current->id);

	while (head->next != list) {
		struct thread * th = (struct thread *) head->next;		// сама ссылка на ready это не поток, смысл имеет только next
		printf("id: %d -> ", th->id);	
		head = head->next;
	}
	printf("\n");
	unlock(&queues_lock);
}

/* time funcs */
unsigned long long timespec2ms(const struct timespec *spec) { 
	return (unsigned long long)spec->tv_sec * 1000 + spec->tv_nsec / 1000000; }

unsigned long long now(void) {
	struct timespec spec;
	clock_gettime(CLOCK_MONOTONIC, &spec); /* <sys/time.h> */
	return timespec2ms(&spec);
}

void delay(unsigned long long ms) {	
	const unsigned long long start = now();
	while (now() - start < ms); 
}

/* thread create funcs*/
void switch_threads(struct thread *from, struct thread *to)
{
	extern void __switch_threads(void **prev, void *next);					// extern линковщик будет искать в линкуемых объектных файлах по имени и сигнатуре

	__switch_threads(&from->context, to->context);
}

struct thread *__create_thread(int stack_order, int (*fptr)(void *), void *arg)		// int (*fptr)(void *) - каким то образом задает сигнануру указателя на фунцию?
{
	const size_t stack_size = PAGE_SIZE << stack_order;

	struct thread *thread = (struct thread *)malloc(stack_size); //slab_cache_alloc(&cache);
	
	if (!thread)
		return thread;
	
	thread->stack_order = stack_order;
	thread->stack_phys = (uintptr_t) thread; 	// buddy_alloc(stack_order); тут повторен свой адрес
	thread->mm = 0;								// mm_create(); memory map - нас не интересует


	char *ptr = (char *)thread;//va(thread->stack_phys);		// по идее получим обратно *thread
	struct frame *regs =
		(struct frame *)(ptr + stack_size - sizeof(*regs));		// за стеком лежит фрейм (регистры, флаги и т.п) в обратном порядке
	struct switch_frame *frame =								
		(struct switch_frame *)((char *)regs - sizeof(*frame));	// сохраняем дно стека до rip (не доходит до фрейма) 
																// короче по размеру 2 фрема от стека отщепили для фрейма и свитч-фрейма
	
	extern void __thread_entry(void);							// movq %r15, %rdi;	movq %r14, %rsi; movq %r13, %rdx; cld; call thread_entry; jmp jump_back
	extern void __thread_exit(void);							// movq %rax, %rdi;	callq thread_exit

	memset(regs, 0, sizeof(*regs));
	memset(frame, 0, sizeof(*frame));							

	frame->rip = (uint64_t)&__thread_entry;
	frame->r15 = (uint64_t)thread;
	frame->r14 = (uint64_t)fptr;
	frame->r13 = (uint64_t)arg;
	frame->rflags = 2;
	
	regs->cs = KERNEL_CS;
	regs->rsp = (uint64_t)ptr + stack_size;
	regs->rip = (uint64_t)&__thread_exit;

	thread->state = THREAD_BLOCKED;								// начальный статус такой
	thread->id = ID++;
	lock_init(&thread->lock);
	condition_init(&thread->cv);
	thread->context = frame;
	thread->regs = regs;

	if (DEBUG) printf("[Created thread]: %p (id: %d, state %d)\n", (void*)thread, thread->id, thread->state);
	
	return thread;
}

struct thread *create_thread(int (*fptr)(void *), void *arg)
{
	const int DEFAULT_STACK_ORDER = 3; /* 16Kb stack */
	return __create_thread(DEFAULT_STACK_ORDER, fptr, arg);
}

void destroy_thread(struct thread *thread)
{
	free(thread);
}

/* thread->schedule staff */
void thread_entry(struct thread *me, int (*fptr)(void *), void *arg)
{
	if (TRACE) printf("(SCHED) IN thread_entry() (my id: %d)\n", me->id);
	thread_place(me);
	// local_int_enable();
	thread_exit(fptr(arg));										// как это работает ваще непонятно ???
	// return fptr(arg);										// int (*fptr)(void *), void *arg преобразуется в fptr(arg) -> вызов функции потока -> int
}												

void thread_start(struct thread *thread)
{
	// lock(&queues_lock);
	// const int enabled = local_int_save();

	idle_counter = 0;
	thread->state = THREAD_ACTIVE;
	
	if (DEBUG) printf("[thread marked ACTIVE]: %p (id: %d, state %d)\n", (void*)thread, thread->id, thread->state);

	list_add_tail(&thread->ll, &ready);		

	// local_int_restore(enabled);
	// unlock(&queues_lock);
}

void thread_wake(struct thread *thread)
{	
	thread_start(thread);										// статус THREAD_ACTIVE, в конец карусели
}

void thread_block(void)
{
	struct thread *me = current;
	
	lock(&me->lock);
	// const int enabled = lock_int_save(&me->lock);

	me->state = THREAD_BLOCKED;									// статус THREAD_BLOCKED, карусель будет его пропускать

	if (DEBUG) printf("[thread marked BLOCKED]: %p (id: %d, state %d)\n", (void*)me, me->id, me->state);

	// unlock_int_restore(&me->lock, enabled);
	unlock(&me->lock);
}

struct thread *thread_current(void)
{
	return current;
}

void thread_exit(int ret)
{
	struct thread *me = current;
	lock(&me->lock);
	// const int enabled = lock_int_save(&me->lock);

	me->retval = ret;											// возвращаемое значение сохраняется в структуре потока
	me->state = THREAD_FINISHED;								// статус THREAD_FINISHED
	if (DEBUG) printf("[thread marked FINISHED]: %p (id: %d, state %d)\n", (void*)me, me->id, me->state);
	// unlock_int_restore(&me->lock, enabled);
	unlock(&me->lock);
	schedule();													// проверить карусель, кто там следующий
}

void thread_join(struct thread *thread, int *ret)
{
	// int enabled = lock_int_save(&thread->lock);
	lock(&thread->lock);

	while (thread->state != THREAD_DEAD) {
		// unlock_int_restore(&thread->lock, enabled);
		unlock(&thread->lock);
		schedule();
		lock(&thread->lock);
		// enabled = lock_int_save(&thread->lock);
	}
	// unlock_int_restore(&thread->lock, enabled);
	unlock(&thread->lock);

	if (ret)
		*ret = thread->retval;
}

void thread_destroy(struct thread *thread)
{
	destroy_thread(thread);										// все деструкции - за пределами планировщика
}

void preempt_disable(void)
{
	const int enabled = local_int_save();

	++PREEMPT_COUNT;
	local_int_restore(enabled);
}

void preempt_enable(void)
{
	const int enabled = local_int_save();

	--PREEMPT_COUNT;
	local_int_restore(enabled);
}

/* scheduler stuff */
void interrupt(int unused)
{
	// asm("int $3");
	// (void) unused;
	
	if (TRACE) printf("(INTERRUPT) timeslice %d -> ", remained_rounds);
	if (remained_rounds) 
		--remained_rounds;										// таймслайс уменьшается только тут
	if (TRACE) printf("%d (my id: %d)\n", remained_rounds, current->id);

	// if (TRACE) __rr_queue(&ready);

	if (remained_rounds <= 0) {
		if (TRACE) printf("\n*** next round ***\n");
		schedule();
	}
}

void scheduler_setup(void)
{
	static struct thread main;

	main.state = THREAD_ACTIVE;
	current = &main;
	idle = &main;								// дать доработать вызвавшей функции main(), потом schedule() поставит отдельный idle поток
	
    remained_rounds = TIMESLICE;

	lock_init(&queues_lock);
    // clear RR
    list_init(&ready);

	/* Setup and start an "interrupt" handler */
	struct sigaction action;
	memset (&action, 0, sizeof (action));		// init with 0
	action.sa_handler = &interrupt;
	action.sa_flags = SA_NODEFER;				// иначе ОС перестает пулять прерывания
	sigaction(SIGALRM, &action, NULL);			// регистрируем функцию-обработчик прерывания в ОС
    
	
    // alarm(1);                             	// start timer - debug variant
	struct itimerval timer;
	memset (&timer, 0, sizeof (timer));			// init with 0
	/* Configure the timer to expire after INTERVAL_USEC msec... */
	timer.it_value.tv_sec = 0;					/* seconds */
	timer.it_value.tv_usec = INTERVAL_USEC;		/* microseconds */
	/* ... and every INTERVAL_USEC msec after that. */
	timer.it_interval.tv_sec = 0;
	timer.it_interval.tv_usec = INTERVAL_USEC;
	/* Start a virtual timer. It counts down whenever this process is executing. */
	setitimer(ITIMER_REAL, &timer, NULL);		// start timer

	printf("[Task Scheduler]: Setup is done. Timer is armed and started\n");
}

void schedule(void)
{   
    struct thread *me = current;
	struct thread *next = 0;
	if (TRACE) printf("(SCHED) entering scheduler (my id: %d)\n", me->id);
	// const int enabled = local_int_save();
	
	/* check if preemptition enabled */
	if (PREEMPT_COUNT) {									// если preempt_count > 0 значит был вызван lock()
		if (TRACE) printf("(SCHED) preemprion is disabled, leave scheduler (my id: %d)\n", me->id);
		// local_int_restore(enabled);							
		return;												// т.е. вытеснение (switch) запрещено - пропускаем этот вызов schedule()
	}														// т.к. переключение потока нежелательно (мы критической секции какого-то потока)
	
	/* check the next in the list */
	lock(&queues_lock);
	if (!list_empty(&ready)) {
		next = (struct thread *)ready.next;
		if (TRACE) printf("(SCHED) -> next (pop from rr_queue): %d (st: %d)\n", next->id, next->state);
		list_del(&next->ll);								// удаляет следующего из карусели, потом на него переключится, он станет me, отработает и удейт в конец очереди
	}
	unlock(&queues_lock);
	
	/**
	 * if there is no next and the current thread is about to block
	 * use a special idle thread
	 **/
	if (me->state != THREAD_ACTIVE && !next)
		next = idle;										// если нет активных ожидающих (idle->id == 0)

	if (!next) {											
		thread_place(me);									// текущий поток заблокирован/умер, в очереди никого - еще раз текущий сделать текущим? мдее...
		if (TRACE) printf("(SCHED) Empty ready queue, on IDLE.\n");
		// local_int_restore(enabled);							
		return;												
	}

	/**
	 * if the current thread is still active and not the special idle
	 * thread, then add it to the end of the ready queue
	 **/
	lock(&queues_lock);
	if (me->state == THREAD_ACTIVE && me != idle)
		list_add_tail(&me->ll, &ready);
	
	if (TRACE) __rr_queue(&ready);
	if (TRACE) printf("(SCHED) SWITCH %d -> %d\n", me->id, next->id);
	
	unlock(&queues_lock);

	switch_threads(me, next);								// после переключения 
	thread_place(me);										// me это теперь next -> в очередь активных потоков
}


static void __task_report(void * arg)
{
	struct threads_list * tl = (struct threads_list *)arg;
	int blocked  = 0;
	int dead	 = 0;
	int finished = 0;
	int active   = 0;
	struct thread **tp = tl->first;
	for (int i=0; i != tl->n; ++i) {
		printf("    (id:%d, st:%d) -> ", (*tp)->id, (*tp)->state);
		switch ((*tp)->state) {
			case THREAD_BLOCKED:  	++blocked; break;
			case THREAD_DEAD:  		++dead; break;
			case THREAD_FINISHED:  	++finished; break;
			case THREAD_ACTIVE:		++active; break;
			default: break;
		}
		tp++;												// указатель на следующий поток в списке созданных
	}

	printf("\n	Total threads created:  %d\n", tl->n);
	printf("	Total threads blocked:  %d", blocked);
	if (blocked) {
		printf(" (deadlock)\n");							// scheduler on idle and there are blocked threads => 100% deadlock 
	} else printf("\n");
	printf("	Total threads dead:     %d\n", dead);
	printf("	Total threads finished: %d\n", finished);
	printf("	Total threads active:   %d\n\n", finished);
}

int scheduler_idle(void * arg)								// его запускает main, он же idle
{
    while(1) {
		++ idle_counter;
		if (!(idle_counter % 10000000)) {					// on idle pause
			printf("[Task scheduler] On idle. No active tasks...\n");
			__task_report(arg);								// в arg список + кол-во всех созданных потоков
		}
    	schedule();
		// __asm__ ("hlt");        							// процессорная команда "остановки" ЦПУ
		asm ("pause");										// в данном случае - дает такой же эффект
    }
    return 0;
}
