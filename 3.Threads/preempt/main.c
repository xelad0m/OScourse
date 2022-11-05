/*Вытесняющее переключение потоков. По прерыванию, в качестве которого исп.системный вызов линуха sigaction()
- используется для изменения действий процесса при получении соответствующего сигнала:
	с флагом SA_NODEFER - не препятствовать получению сигнала при его обработке;
	настроенный на системный сигнал SIGALRM - применяемый в POSIX-системах сигнал по истечении времени, 
	предварительно заданного функцией alarm()
 */

#include <assert.h>
#include <stddef.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <time.h>

#include <signal.h>
#include <unistd.h>


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


struct thread {
	void *context;
};



void switch_threads(struct thread *from, struct thread *to)
{
	void __switch_threads(void **prev, void *next);

	__switch_threads(&from->context, to->context);
}

struct thread *__create_thread(size_t stack_size, void (*entry)(void))
{
	const size_t size = stack_size + sizeof(struct thread);
	struct switch_frame frame;
	struct thread *thread = malloc(size);

	if (!thread)
		return thread;

	memset(&frame, 0, sizeof(frame));
	frame.rip = (uint64_t)entry;

	thread->context = (char *)thread + size - sizeof(frame);
	memcpy(thread->context, &frame, sizeof(frame));
	return thread;
}

struct thread *create_thread(void (*entry)(void))
{
	const size_t default_stack_size = 16384;

	return __create_thread(default_stack_size, entry);
}

void destroy_thread(struct thread *thread)
{
	free(thread);
}


static struct thread *thread[2];
static int current_thread;


static void interrupt(int unused)
{
	(void) unused;

	struct thread *prev = thread[current_thread++ % 2];
	struct thread *next = thread[current_thread % 2];

	alarm(1);											// через секунду - организовать еще одно "прерывание"
	printf("interrupt\n");
	switch_threads(prev, next);
}

static unsigned long long timespec2ms(const struct timespec *spec)
{
	return (unsigned long long)spec->tv_sec * 1000 + spec->tv_sec / 1000000;
}

static unsigned long long now(void)
{
	struct timespec spec;

	clock_gettime(CLOCK_MONOTONIC, &spec);
	return timespec2ms(&spec);
}

static void delay(int ms)
{
	const unsigned long long start = now();

	while (now() - start < ms); 
}

static void thread_entry1(void)
{
	while (1) {
		printf("In thread 1\n");
		delay(200);
	}
}

static void thread_entry2(void)
{
	while (1) {
		printf("In thread 2\n");
		delay(200);
	}
}

int main(void)
{
	struct sigaction action;
	struct thread th;

	/* Setup an "interrupt" handler */
	action.sa_handler = &interrupt;
	action.sa_flags = SA_NODEFER;
	sigaction(SIGALRM, &action, NULL);		

	thread[0] = create_thread(&thread_entry1);
	thread[1] = create_thread(&thread_entry2);

	/* Start timer and kick off threading */
	alarm(1);										// первый вызов (через секунду выдать SIGALRM)
	switch_threads(&th, thread[0]);					// уйти из главного потока в 0й

	while (1);										// главный зависает тут и дальше уже не попадет никогда
													// из-за этого пример работает через раз?.. 
	destroy_thread(thread[2]);						// и корявые индексы тут (у нас 0 и 1 тока) 
	destroy_thread(thread[1]);						// нам не портят компиляцию

	return 0;
}
