/* synchronization */

// #include <atomic>
// using namespace std;

// struct lock { atomic_int last; };
   
// void lock_init(struct lock *lock) {
//     atomic_store(&lock->last, 0);                       // путает лектор по максимуму - 0 тут это и есть наш pid, у второго 1
// }

// void lock(struct lock *lock) {
//      while (atomic_load(&lock->last) == threadId());    // while(true) для pid != 0; 
// }

// void unlock(struct lock *lock) {
//     atomic_store(&lock->last, threadId());              // тут мы восстановим 0, т.е. разрешим другим заходить
// }


/* threads */

#include <assert.h> 
#include <stddef.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

struct switch_frame {						// сохраняемый стек (контекст) для переключения
	uint64_t rflags;
	uint64_t r15;
	uint64_t r14;
	uint64_t r13;
	uint64_t r12;
	uint64_t rbp;
	uint64_t rbx;
	uint64_t rip;							// поле регистра указателя инструкции (RIP) - смещение в текущем сегменте кода для следующей инструкции, которая будет выполняться
} __attribute__((packed));					// менее переносимый вариант чем #pragma pack ?

struct thread {				
	void *context;							// индентификатор/дескриптор потока (тут - просто void адрес его контекста - структуры switch_frame - для каждого потока)
};

// gcc -S -fverbose-asm _atomic_rw.cpp // (gdb) layout asm
/* ассемблерной вставкой переключение контекста сделать невозможно, т.к. вызов из функции будет вызовом 
скомпилированной в фукнции секции, и она покажет значение регистра стека этой функции, а не объемлющей (т.е.целевого потока) */
/* оказалось, что переключатель контекста в ядре линукс сделали отдельным компилируемым файлом, подключаемым
компоновщиком, только в версии ядра 4.x, до этого этого (например 3.x ядро (2011)) был макрос! отлично, его и возьмем за основу*/
/** arch/x86/include/asm/system.h (3.0.1 kernel) */

// #define SAVE_CONTEXT    												\
// 	"pushq %%rbx\n\tpushq %%rbp\n\tpushq %%r12\n\tpushq %%r13\n\tpushq %%r14\n\tpushq %%r15\n\tpushfq\n\t"
// #define RESTORE_CONTEXT 												\
// 	"popfq\n\tpopq %%r15\n\tpopq %%r14\n\tpopq %%r13\n\tpopq %%r12\n\tpopq %%rbp\n\tpopq %%rbx\n\t\n\t"
#define __EXTRA_CLOBBER													\
    "rcx","rbx","rdx","r8","r9","r10","r11","r12","r13","r14","r15"

// какая-то засада тут есть, инлайн ассемблером не получается перекючить задачу (а так хотелось без make обойтись)
struct thread * __switch_threads(struct thread *from, struct thread *to);
#define SAVE_CONTEXT    "pushfq ; pushq %%rbp ; movq %%rsi,%%rbp\n\t"
#define RESTORE_CONTEXT "movq %%rbp,%%rsi ; popq %%rbp ; popfq\t"
#define switch_threads(from, to) 										\
    asm volatile (SAVE_CONTEXT 											\
        "movq %%rsp, (%[prev])\n\t" /* save RSP */ 						\
        "movq %[next], %%rsp\n\t" /* restore RSP */ 					\
		"callq __switch_threads\n\t"									\
        RESTORE_CONTEXT 												\
        : /* no out */													\
        : [prev] "D" (from), [next] "S" (to)							\
        : "memory", "cc", __EXTRA_CLOBBER);
		// , __EXTRA_CLOBBER);								

struct thread * __switch_threads(struct thread *from, struct thread *to)	{
    void **prev = &(from->context);
	void *next = to->context;
	return from;
	// asm volatile (														\
	// 	SAVE_CONTEXT 													\
	// 	"movq %%rsp, (%[prev])\n\t" /* save RSP */ 						\
    //     "movq %[next], %%rsp\n\t" /* restore RSP */ 					\
    //     RESTORE_CONTEXT 												\
    //     : /* no out */													\
    //     : [prev] "D" (prev), [next] "S" (next)							\
    //     : "memory", "cc", __EXTRA_CLOBBER);

	// __switch_threads(&from->context, to->context);
}

struct thread *__create_thread(size_t stack_size, void (*entry)(void))	// создает стек
{
	const size_t size = stack_size + sizeof(struct thread);				
	struct switch_frame frame;											// создаем на стеке шаблон для стека
	struct thread* thread = (struct thread*)malloc(size);				// аллокация под структуру

	if (!thread)														// если не аллоцировалось
		return thread;													// NULL

	memset(&frame, 0, sizeof(frame));									// начальный контекст инициализируется 0
	frame.rip = (uint64_t)entry;										// кроме адреса возврата в вызвавшую функцию (RIP)
	thread->context = (char *)thread + size - sizeof(frame);			// в конце будет лежать структура под сохранение контекста для переключения (растет к началу)
	memcpy(thread->context, &frame, sizeof(frame));						// копируем инициализированный начальный контекст в дин.память

	struct switch_frame * frm = (struct switch_frame *) thread->context;
	printf("-> new thread: RSP= %p, RIP=%p\n", &thread->context, (void*)frm->rip);

	return thread;														// возвращаем указатель на него
}

struct thread *create_thread(void (*entry)(void))
{
	const size_t default_stack_size = 4096;

	return __create_thread(default_stack_size, entry);
}

void destroy_thread(struct thread *thread)
{
	free(thread);
}


static struct thread _thread0;											// структура под исполнение функции main() - главный поток, на самом деле не нужно
static struct thread *thread[3];										// стат.массив указателей на дескрипторы потоков (точки входа (они же тела потоков))

void regs(struct thread *thread)
{
	struct switch_frame * frame = (struct switch_frame *) thread->context;
	
	printf("flags= %p; r15=%p; r14=%p; r13=%p; r12=%p; rbp=%p; rbx=%p; rip=%p\n",
		(void*)frame->rflags,(void*)frame->r15,(void*)frame->r14,(void*)frame->r13,
		(void*)frame->r12,(void*)frame->rbp,(void*)frame->rbx,(void*)frame->rip);	
}

static void thread_entry1(void)											// точка входа - просто фукнция (без циклов и всякого такого)
{
	printf("In thread1, switching to thread2...\n");
	printf("-> thread1: "); regs(thread[1]);
	printf("-> thread2: "); regs(thread[2]);
	switch_threads(thread[1], thread[2]);								// может вызывать переключение на другой поток
	printf("Back in thread1, switching to thread2...\n");
	switch_threads(thread[1], thread[2]);
	printf("Back in thread1, switching to thread0...\n");
	switch_threads(thread[1], thread[0]);								// в конце обязательно где-то - возврат в главный поток
}

static void thread_entry2(void)
{
	printf("In thread2, switching to thread1...\n");
	switch_threads(thread[2], thread[1]);
	printf("Back in thread2, switching to thread1...\n");
	switch_threads(thread[2], thread[1]);
}


int main()
{
	thread[0] = &_thread0;
	thread[1] = create_thread(&thread_entry1);
	thread[2] = create_thread(&thread_entry2);

	printf("In thread0, switching to thread1...\n");
	switch_threads(thread[0], thread[1]);								// уходим из главного в 1
	printf("Retunred to thread 0\n");

	destroy_thread(thread[2]);
	destroy_thread(thread[1]);

    return 0;
}