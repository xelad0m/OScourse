#ifndef __THREAD_H__
#define __THREAD_H__

#include "locks.h"

#include <stddef.h>
#include <stdint.h>										// uint64_t uintptr_t
#include <stdio.h>										// printf
#include <stdlib.h>										// rand srand
#include <string.h>										// memset (for runtime init od vars)
#include <time.h>										// time clock_gettime CLOCK_MONOTONIC
#include <sys/time.h>									// itimeinterval setitimer

#include <signal.h>										// sigaction SIGALRM SA_NODEFER
#include <unistd.h>

/* чисто для порядку */
#define MAX_THREADS 	256     

extern int DEBUG;
extern int TRACE;

enum thread_state {
	THREAD_ACTIVE,
	THREAD_BLOCKED,
	THREAD_FINISHED,
	THREAD_DEAD
};

struct page {
	struct list_head ll;
	unsigned long flags;
	int order;
};

struct mm {
	/* list of mapped region descriptors */
	struct list_head vmas;

	/* root page table */
	struct page *pt;
	uintptr_t cr3;
};

struct frame {
	uint64_t rbp;
	uint64_t rbx;
	uint64_t r15;
	uint64_t r14;
	uint64_t r13;
	uint64_t r12;
	uint64_t r11;
	uint64_t r10;
	uint64_t r9;
	uint64_t r8;
	uint64_t rax;
	uint64_t rcx;
	uint64_t rdx;
	uint64_t rsi;
	uint64_t rdi;
	uint64_t intno;
	uint64_t err;
	uint64_t rip;
	uint64_t cs;
	uint64_t rflags;
	uint64_t rsp;
	uint64_t ss;
} __attribute__((packed));

struct thread {
	struct list_head ll;
	struct lock lock;
	struct condition cv;
	uintptr_t stack_phys;
	int stack_order;
	enum thread_state state;
	struct frame *regs;
	struct mm *mm;
	void *context;
	int id;
	int retval;
};

struct threads_list {				// я не умею в Си...
	struct thread ** first;			// это чтобы засылать все созданные потоки в планировщик, посмотеть дедлокии т.п.
	int n;
};

/* time funcs */
unsigned long long timespec2ms(const struct timespec *spec);
unsigned long long now(void);
void delay(unsigned long long ms);

/* thread create funcs*/
void switch_threads(struct thread *from, struct thread *to);
struct thread *__create_thread(int stack_order, int (*fptr)(void *), void *arg);
struct thread *create_thread(int (*fptr)(void *), void *arg);
void destroy_thread(struct thread *thread);

/* thread->schedule staff */
void thread_entry(struct thread *me, int (*fptr)(void *), void *arg);
void thread_start(struct thread *thread);
void thread_wake(struct thread *thread);
void thread_block(void);
struct thread *thread_current(void);
void thread_exit(int ret);
void thread_join(struct thread *thread, int *ret);
void thread_destroy(struct thread *thread);

void preempt_disable(void);							// используется как флаги для планировщика
void preempt_enable(void);							// используется как флаги для планировщика

/* schedule stuff */
void interrupt(int unused);
void scheduler_setup(void);
void schedule(void);
int scheduler_idle(void * arg);


#endif /* __THREAD_H__ */