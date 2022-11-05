#ifndef __LOCKS_H__
#define __LOCKS_H__

#include "list.h"

#include <stdatomic.h>								// ticket spinlock, wd_lock timestamp

extern int DEBUG;
extern int TRACE;

/* spin lock */
struct lock { int dummy; };

void lock_init(struct lock *lock);
void lock(struct lock *lock);
void unlock(struct lock *lock);

/* spin rw ticket lock */
struct rwlock { 
    atomic_uint ticket;                             // общий пул "номерков"
    atomic_uint write;                              // две очереди - для писателей
    atomic_uint read;                          		// - для читателей
};    

void ticket_spinlock_init(struct rwlock *lock);
void read_lock(struct rwlock *lock);
void read_unlock(struct rwlock *lock);
void write_lock(struct rwlock *lock);
void write_unlock(struct rwlock *lock);

/* mutex lock */
struct mutex {
	struct lock lock;
	struct list_head wait;
	struct thread *owner;
};

struct mutex_wait {									// часть структуры мьютекса (элемент, ожидающий разблокировки)
	struct list_head ll;					
	struct thread *thread;							// адрес потока, который станет владельцем мьютекса
};

void mutex_init(struct mutex *mutex);
void mutex_lock(struct mutex *mutex);
void mutex_unlock(struct mutex *mutex);

/* condition variable */
struct condition {
	struct lock lock;								// внутренний лок (блокирует работу с очередью ожидания)
	struct list_head wait;
};

struct condition_wait {
	struct list_head ll;
	struct thread *thread;
};

void condition_init(struct condition *cv);
void wait(struct condition *cv, struct mutex *lock);//внешний лок, на котором висят потоки
void wait_spin(struct condition *cv, struct lock *lock);
void notify_one(struct condition *cv);
void notify_all(struct condition *cv);

/* wait-die locking system */

struct wdlock_ctx; /* forward declaration */

struct wdlock {
    /* wdlock_ctx должен хранить информацию обо всех
       захваченных wdlock-ах, а это поле позволит связать
       wdlock-и в список. */
	struct wdlock *next;

    /* Текущий владелец блокировки - из него мы извлекаем
       timestamp связанный с блокировкой, если блокировка
       свободна, то хранит NULL. */
	const struct wdlock_ctx *owner;

    /* lock и cv могут быть использованы чтобы дождаться
       пока блокировка не освободится либо у нее не сменится
       владелец. 
	   Главная мысль тут, что их не нужно держать кроме как на период
	   смены владельца в wdlock_lock(), т.к. на самом деле поток блокируется 
	   планировщиком в методе wait() и только тот поток, который имеет шанс продложить
	   работать */
	struct mutex lock;		
	struct condition cv;
};

/* Каждый контекст имеет свой уникальный timestamp и хранит
   список захваченных блокировок. */
struct wdlock_ctx {
	unsigned long long timestamp;
	struct wdlock *locks;									// список захваченных блокировок
};

void wdlock_ctx_init(struct wdlock_ctx *ctx);
void wdlock_init(struct wdlock *lock);
int wdlock_lock(struct wdlock *l, struct wdlock_ctx *ctx);
void wdlock_unlock(struct wdlock_ctx *ctx);


// dummy ints disablers - we are not in kernel mode so no real interrupt handlers (using signals)
int local_int_save();
void local_int_restore(const int unused);

#endif /* __LOCKS_H__ */