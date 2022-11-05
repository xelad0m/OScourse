/*Вытесняющее переключение потоков. По прерыванию, в качестве которого исп.системный вызов линуха sigaction()
- используется для изменения действий процесса при получении соответствующего сигнала:
	с флагом SA_NODEFER - не препятствовать получению сигнала при его обработке;
	настроенный на системный сигнал SIGALRM - применяемый в POSIX-системах сигнал по истечении времени, 
	предварительно заданного функцией alarm()
 */
#include "thread.h"
#include "list.h"

int DEBUG = 0;
int TRACE = 0;

static int ID = 100; /* стартовый id потока (idle->id = 0) */

void spin_setup(struct spinlock *lock)
{
	(void) lock;
}

void mutex_setup(struct mutex *mutex)
{
	spin_setup(&mutex->lock);
	list_init(&mutex->wait);												// пустой список ожидающих этой блокоровки
	mutex->owner = 0;														// текущий владелец (для которого работа разрешена)
}

void switch_threads(struct thread *from, struct thread *to)
{
	extern void __switch_threads(void **prev, void *next);					// extern линковщик будет искать в линкуемых объектных файлах по имени и сигнатуре

	__switch_threads(&from->context, to->context);
}

struct thread *__create_thread(int stack_size, int (*fptr)(void *), void *arg)		// int (*fptr)(void *), void *arg - каким то образом задает сигнануру указателя на фунцию
{
	const int size = stack_size + sizeof(struct thread);
	struct thread *thread = (struct thread *)malloc(size);

	if (!thread)
		return thread;

	thread->context = (char *)thread + size - sizeof(struct switch_frame);
	struct switch_frame *frame = (struct switch_frame *) thread->context;

	extern void __thread_entry(void);										// получает точку выхода из потока 
	extern void __thread_exit(void);										// получает точку входа в поток (пока не используем)

	frame->rip = (uint64_t)&__thread_entry;
	frame->r15 = (uint64_t)thread;
	frame->r14 = (uint64_t)fptr;
	frame->r13 = (uint64_t)arg;
	frame->rflags = 2;

	thread->state = THREAD_BLOCKED;											// начальный статус такой
	thread->id = ID++;
	spin_setup(&thread->lock);
	
	if (DEBUG) printf("[Created thread]: %p (id: %d, state %d)\n", (void*)thread, thread->id, thread->state);
	
	return thread;
}

struct thread *create_thread(int (*fptr)(void *), void *arg)
{
	const int default_stack_size = 16384; // stack order = 3

	return __create_thread(default_stack_size, fptr, arg);
}

void destroy_thread(struct thread *thread)
{
	free(thread);
}
