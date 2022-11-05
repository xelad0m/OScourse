#ifndef __SCHED_H__
#define __SCHED_H__

#include "thread.h"         // switch_threads

extern int DEBUG;           // где-то еще

void interrupt(int unused);

// dummy interrupt disable - we are not in kernel mode - no interrupt disable
int local_int_save();
void local_int_restore(const int unused);
// time funcs
unsigned long long timespec2ms(const struct timespec *spec);
unsigned long long now(void);
void delay(unsigned long long ms);

void thread_entry(struct thread *me, int (*fptr)(void *), void *arg);
void thread_start(struct thread *thread);
void thread_wake(struct thread *thread);
void thread_block(void);
struct thread *thread_current(void);
void thread_exit(int ret);
void thread_join(struct thread *thread, int *ret);
void thread_destroy(struct thread *thread);

void scheduler_setup(void);
void schedule(void);
int scheduler_idle(void);

#endif /* __SCHED_H__ */