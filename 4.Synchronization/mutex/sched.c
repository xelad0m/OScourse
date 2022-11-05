/* Планировщик, использующий алгоритм Round Robin. Реализация планировщика включает:

    void scheduler_setup() - вызывается перед началом работы, а TIMESLICE - квант времени, который нужно использовать;
    void interrupt() - вызывается через равные интервалы времени, нотифицирует, что прошла одна единица времени;
    
Каждый раз, когда поток выполняется на CPU и вызывается interrupt, считайте, что поток отработал целую единицу времени на CPU. 
Т. е. даже если предыдущий поток добровольно освободил CPU (вызвав block_thread или exit_thread) и сразу после того, как CPU был отдан другому потоку, 
была вызвана функция interrupt, то все равно считается, что второй поток отработал целую единицу времени на CPU.*/

#include "sched.h"         							// switch_threads
#include "list.h"									// двусвязный замкнутый список

#include <sys/time.h>								// itimeinterval setitimer (POSIX)


struct mutex_wait {									// часть структуры мьютекса (элемент, ожидающий разблокировки)
	struct list_head ll;					
	struct thread *thread;							// адрес потока, который станет владельцем мьютекса
};
static int preempt_count;							// разрешение вытеснения (static xранятся не в heap и не на stack, а в специальных сегментах памяти, которые называются .data и .bss (зависит от того инициализированы статические данные или нет))
													// неинициализированные идут в .bss (Block Started by Symbol) - чето типа особая секция. Обычно загрузчик программ инициализирует bss область при загрузке приложения нулями
													// казалось бы можно написать = 0 (поместится в .data) - но тогда не работает блокировка...

static const unsigned TIMESLICE = 5;               // квант времени для работы потока (в тиках (прерываниях))
static int remained_rounds = 0;                     // осталось отработать тиков до переключения
static int TIK_INTERVAL_MS =10;						// продолжительность тика (мс)

static struct list_head ready;						// round robin (карусель) - очередь АКТИВНЫХ потоков (заблокированные - в очередях мьютексов)
static struct spinlock ready_lock;					// блокировка доступа к списку активных потоков (round robin)

static struct thread * current;						// текущий поток
static struct thread * idle;						// поток, подключаемый когда нет активных ожидающих

// statics в начало, т.к. их нет смысла объявлять в заголовочном файле
static void thread_place(struct thread *me)
{
	spin_lock(&current->lock);
	if (current->state == THREAD_FINISHED)
		current->state = THREAD_DEAD;
	spin_unlock(&current->lock);

	current = me;
	remained_rounds = TIMESLICE;						// новый таймслайс начинается только тут (+ в начальном сетапе)
}

void __rr_queue(struct list_head * list)
{
	struct list_head *head = list;
	spin_lock(&ready_lock);

	printf("    running: %d, next -> ", current->id);

	while (head->next != list) {
		struct thread * th = (struct thread *) head->next;		// сама ссылка на ready это не поток, смысл имеет только next
		printf("id: %d -> ", th->id);	
		head = head->next;
	}
	printf("\n");
	spin_unlock(&ready_lock);
}

void interrupt(int unused)
{
	(void) unused;
	
	if (DEBUG) printf("(INTERRUPT handler) timeslice %d -> ", remained_rounds);
	if (remained_rounds) 
		--remained_rounds;								// таймслайс уменьшается только тут
	if (DEBUG) printf("%d:\n", remained_rounds);

	if (DEBUG) __rr_queue(&ready);

	if (remained_rounds <= 0) {
		if (DEBUG) printf("\n*** rolling round ***\n");
		schedule();
	}
}

// dummy interrupt on/off switchers
int local_int_save() { return 0; }
void local_int_restore(const int unused) {}

// spin lock
/**
 * With this implementation while we hold spinlock we can't be
 * preempted from the CPU, but the CPU is still able to handle
 * interrupts.
 **/
void spin_lock(struct spinlock *lock)
{
	(void) lock;
	// ++preempt_count;
	preempt_disable();
}

void spin_unlock(struct spinlock *lock)
{
	(void) lock;
	// --preempt_count;
	preempt_enable();
}

void mutex_lock(struct mutex *mutex)
{
	struct thread *me = thread_current();

	spin_lock(&mutex->lock);
	if (!mutex->owner) {
		mutex->owner = me;
		spin_unlock(&mutex->lock);
		return;
	}

	while (mutex->owner != me) {
		struct mutex_wait wait;

		wait.thread = me;								// новый элемент в список ожидающих разблокировки данного мьютекса
		list_add_tail(&wait.ll, &mutex->wait);			// добавить текущий поток в конец очереди ожидающих разблокировки 
		thread_block();									// заблокировать поток (поставить статус заблокирован), карусель будет его пропускать
		spin_unlock(&mutex->lock);						// разблокировать 

		schedule();

		spin_lock(&mutex->lock);
		list_del(&wait.ll);
	}
	spin_unlock(&mutex->lock);
}

void mutex_unlock(struct mutex *mutex)
{
	spin_lock(&mutex->lock);
	if (!list_empty(&mutex->wait)) {
		struct mutex_wait *wait = (struct mutex_wait *)mutex->wait.next;

		/* wake up the next thread in the queue */
		mutex->owner = wait->thread;
		thread_wake(wait->thread);
	} else {
		mutex->owner = 0;
	}
	spin_unlock(&mutex->lock);
}

void preempt_disable(void)
{
	const int enabled = local_int_save();

	++preempt_count;
	local_int_restore(enabled);
}

void preempt_enable(void)
{
	const int enabled = local_int_save();

	--preempt_count;
	local_int_restore(enabled);
}


unsigned long long timespec2ms(const struct timespec *spec)
{ return (unsigned long long)spec->tv_sec * 1000 + spec->tv_nsec / 1000000; }

unsigned long long now(void) {
	struct timespec spec;
	clock_gettime(CLOCK_MONOTONIC, &spec);
	return timespec2ms(&spec);
}

void delay(unsigned long long ms)
{	const unsigned long long start = now();
	while (now() - start < ms); 
}


void thread_entry(struct thread *me, int (*fptr)(void *), void *arg)
{
	thread_place(me);
	// local_int_enable();
	
	thread_exit(fptr(arg));						// как это работает ваще непонятно ???
	// return fptr(arg);							// int (*fptr)(void *), void *arg преобразуется в fptr(arg) -> вызов функции потока -> int
}												

void thread_start(struct thread *thread)
{
	spin_lock(&ready_lock);
	// const int enabled = local_int_save();

	thread->state = THREAD_ACTIVE;
	
	if (DEBUG) printf("[thread marked ACTIVE]: %p (id: %d, state %d)\n", (void*)thread, thread->id, thread->state);

	list_add_tail(&thread->ll, &ready);		

	// local_int_restore(enabled);
	spin_unlock(&ready_lock);
}

void thread_wake(struct thread *thread)
{
	thread_start(thread);					// статус THREAD_ACTIVE, в конец карусели
}

void thread_block(void)
{
	struct thread *me = current;
	
	spin_lock(&me->lock);
	// const int enabled = spin_lock_int_save(&me->lock);

	me->state = THREAD_BLOCKED;				// статус THREAD_BLOCKED, карусель будет его пропускать
	// spin_unlock_int_restore(&me->lock, enabled);
	spin_unlock(&me->lock);
}

struct thread *thread_current(void)
{
	return current;
}

void thread_exit(int ret)
{
	struct thread *me = current;
	spin_lock(&me->lock);
	// const int enabled = spin_lock_int_save(&me->lock);

	me->retval = ret;						// возвращаемое значение сохраняется в структуре потока
	me->state = THREAD_FINISHED;			// статус THREAD_FINISHED
	// spin_unlock_int_restore(&me->lock, enabled);
	spin_unlock(&me->lock);
	schedule();								// проверить карусель, кто там следующий
}

void thread_join(struct thread *thread, int *ret)
{
	// int enabled = spin_lock_int_save(&thread->lock);
	spin_lock(&thread->lock);

	while (thread->state != THREAD_DEAD) {
		// spin_unlock_int_restore(&thread->lock, enabled);
		spin_unlock(&thread->lock);
		schedule();
		spin_lock(&thread->lock);
		// enabled = spin_lock_int_save(&thread->lock);
	}
	// spin_unlock_int_restore(&thread->lock, enabled);
	spin_unlock(&thread->lock);

	if (ret)
		*ret = thread->retval;
}

void thread_destroy(struct thread *thread)
{
	destroy_thread(thread);					// все деструкции - за пределами планировщика
}


void scheduler_setup(void)
{
	static struct thread main;

	main.state = THREAD_ACTIVE;
	current = &main;
	idle = &main;
	
    remained_rounds = TIMESLICE;

	spin_setup(&ready_lock);
    // clear RR
    list_init(&ready);

	/* Setup and start an "interrupt" handler */
	struct sigaction action;
	memset (&action, 0, sizeof (action));	// init with 0
	action.sa_handler = &interrupt;
	action.sa_flags = SA_NODEFER;
	sigaction(SIGALRM, &action, NULL);	
    
	
    // alarm(1);                             	// start timer - debug variant
	struct itimerval timer;
	memset (&timer, 0, sizeof (timer));			// init with 0
	/* Configure the timer to expire after TIK_INTERVAL_MS msec... */
	timer.it_value.tv_sec = 0;						/* seconds */
	timer.it_value.tv_usec = TIK_INTERVAL_MS*1000;	/* microseconds */
	/* ... and every TIK_INTERVAL_MS msec after that. */
	timer.it_interval.tv_sec = 0;
	timer.it_interval.tv_usec = TIK_INTERVAL_MS*1000;
	/* Start a virtual timer. It counts down whenever this process is executing. */
	setitimer (ITIMER_REAL, &timer, NULL);		// start timer

	printf("[Task Scheduler]: Setup is done. Timer is armed and started\n");
}

void schedule(void)
{   
    struct thread *me = current;
	struct thread *next = 0;

	const int enabled = local_int_save();
	
	/* check if preemptition enabled */
	if (preempt_count) {									// если preempt_count > 0 значит был вызван spin_lock()
		local_int_restore(enabled);							
		return;												// т.е. вытеснение (switch) запрещено - пропускаем этот вызов schedule()
	}														// т.к. переключение потока нежелательно (мы критической секции какого-то потока)
	
	/* check the next in the list */
	spin_lock(&ready_lock);
	if (!list_empty(&ready)) {
		next = (struct thread *)ready.next;
		if (DEBUG) printf("(SCHED) -> next: %d (st: %d)\n", next->id, next->state);
		list_del(&next->ll);								// удаляет следующего из карусели, потом на него переключится, он станет me, отработает и удейт в конец очереди
	}
	if (DEBUG) __rr_queue(&ready);
	spin_unlock(&ready_lock);
	
	/**
	 * if there is no next and the current thread is about to block
	 * use a special idle thread
	 **/
	if (me->state != THREAD_ACTIVE && !next)
		next = idle;										// если нет активных ожидающих

	if (!next) {											
		thread_place(me);									// текущий поток заблокирован/умер, в очереди никого - еще раз текущий сделать текущим? мдее...
		if (DEBUG) printf("(SCHED) EMPTY RR (all other are blocked) & current is not IDLE.\n");
		local_int_restore(enabled);							
		return;												
	}

	/**
	 * if the current thread is still active and not the special idle
	 * thread, then add it to the end of the ready queue
	 **/
	spin_lock(&ready_lock);
	if (me->state == THREAD_ACTIVE && me != idle)
		list_add_tail(&me->ll, &ready);
	
	if (DEBUG) __rr_queue(&ready);
	if (DEBUG) printf("(SCHED) SWITCH %d -> %d\n", me->id, next->id);
	
	spin_unlock(&ready_lock);

	switch_threads(me, next);
	thread_place(me);
}

int scheduler_idle(void)									// его запускает main, он же idle
{
    while(1) {
    	schedule();
		__asm__ ("hlt");        							// процессорная команда "остановки" ЦПУ
    }
    return 0;
}