#ifndef __THREAD_H__
#define __THREAD_H__

#include "list.h"

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

enum thread_state {
	THREAD_ACTIVE,
	THREAD_BLOCKED,
	THREAD_FINISHED,
	THREAD_DEAD
};

struct spinlock { int dummy; };

struct mutex {
	struct spinlock lock;
	struct list_head wait;
	struct thread *owner;
};

struct thread {
	struct list_head ll;
	struct spinlock lock;
	enum thread_state state;
	void *context;
	int id;
	int retval;
};


void mutex_setup(struct mutex *mutex);
void mutex_lock(struct mutex *mutex);
void mutex_unlock(struct mutex *mutex);

void spin_setup(struct spinlock *lock);
void spin_lock(struct spinlock *lock);
void spin_unlock(struct spinlock *lock);
// int spin_lock_int_save(struct spinlock *lock);
// void spin_unlock_int_restore(struct spinlock *lock, int enable);

void preempt_disable(void);			
void preempt_enable(void);

void switch_threads(struct thread *from, struct thread *to);
struct thread *__create_thread(int stack_size, int (*fptr)(void *), void *arg);
struct thread *create_thread(int (*fptr)(void *), void *arg);
void destroy_thread(struct thread *thread);

#endif /* __THREAD_H__ */