#include <assert.h>
#include <stddef.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

struct switch_frame {
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
	void *context;							// индентификатор/дескриптор потока (тут - просто void адрес для каждого потока)
};


void switch_threads(struct thread *from, struct thread *to)				// обертка для вызова __switch_threads
{																		
	void __switch_threads(void **prev, void *next);						// нужно объявить, чтобы компоновщик ее нашел в одном из объектных файлов, а не писать отдельный заголовочный файл
																		// для инклюда однй функции (можно объвить и снаружи, но она больше нигде не нужна, поэтому тут самое то)
																		// + имена в объявлении не обязательны, только типы и их порядок
																		// соответствующий объектник подключается в make файл так:
																		// example: switch.o main.o
																		// 		$(CC) -g $^ -o $@
	__switch_threads(&from->context, to->context);						// подключаемая компоновщиком ассемблерная функция из отдельного объектного файла
	
	// struct switch_frame * f_cxt = (struct switch_frame *) from->context;
	// struct switch_frame * t_cxt = (struct switch_frame *) to->context;
	// printf("-> switch from: RSP= %p, RIP=%p -> to: RSP= %p, RIP=%p\n", 
	// 		&from->context, (void*)f_cxt->rip,
	// 		to->context, (void*)t_cxt->rip);
}

struct thread *__create_thread(size_t stack_size, void (*entry)(void))	// создает стек
{
	const size_t size = stack_size + sizeof(struct thread);				
	struct switch_frame frame;											// создаем на стеке шаблон для стека
	struct thread* thread = (struct thread*)malloc(size);				// аллокация под стек потока (хвост отводится под структуру контекста)

	if (!thread)														// если не аллоцировалось
		return thread;													// NULL

	memset(&frame, 0, sizeof(frame));									// начальный контекст инициализируется 0
	frame.rip = (uint64_t)entry;										// кроме указателя команд RIP (где лежит следующая инструкция)
	thread->context = (char *)thread + size - sizeof(frame);			// адрес где лежит сохраненный контекст
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
	// struct switch_frame * t1_cxt = (struct switch_frame *) thread[1]->context;

	// printf("In thread1, switching to thread2...\n");
	// printf("-> t1: RSP= %p, RIP=%p\n",&thread[1]->context, (void*)t1_cxt->rip);
	printf("-> thread1: "); regs(thread[1]);
	printf("-> thread2: "); regs(thread[2]);
	switch_threads(thread[1], thread[2]);								// может вызывать переключение на другой поток

	// printf("Back in thread1, switching to thread2...\n");
	switch_threads(thread[1], thread[2]);
	// printf("Back in thread1, switching to thread0...\n");
	switch_threads(thread[1], thread[0]);								// в конце обязательно где-то - возврат в главный поток
}

static void thread_entry2(void)
{
	// printf("In thread2, switching to thread1...\n");
	switch_threads(thread[2], thread[1]);
	// printf("Back in thread2, switching to thread1...\n");
	switch_threads(thread[2], thread[1]);
}

int main(void)															// главный поток main()
{
	thread[0] = &_thread0;

	thread[1] = create_thread(&thread_entry1);
	// struct switch_frame * t1_cxt = (struct switch_frame *) thread[1]->context;
	// printf("-> t1: RSP= %p, RIP=%p\n",&thread[1]->context, (void*)t1_cxt->rip);

	thread[2] = create_thread(&thread_entry2);
	// struct switch_frame * t2_cxt = (struct switch_frame *) thread[2]->context;
	// printf("-> t2: RSP= %p, RIP=%p\n",&thread[2]->context, (void*)t2_cxt->rip);

	// printf("In thread0, switching to thread1...\n");
	switch_threads(thread[0], thread[1]);								// уходим из главного в 1
	// printf("-> t1: RSP= %p, RIP=%p\n",&thread[1]->context, (void*)t1_cxt->rip);
	printf("Retunred to thread 0\n");

	destroy_thread(thread[2]);
	destroy_thread(thread[1]);

	return 0;
}
