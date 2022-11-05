
// gcc -g ./spinlock.c -o ./spinlock -lpthread -std=c99

#include <pthread.h>
#include <stdio.h>
#include <stdbool.h>
#include <stdatomic.h>

#define N 2 //*2

#define ERROR_CREATE_THREAD -11
#define ERROR_JOIN_THREAD   -12
#define BAD_MESSAGE         -13
#define SUCCESS               0

static int CRITICAL_DATA = 0;

/* ticket RW lock implementation */

struct rwlock { 
    atomic_uint ticket;                                         // общий пул "номерков"
    atomic_uint write;                                          // две очереди - для писателей
    atomic_uint read;                                           // - для читателей
} lock;                                                          

void lock_init(struct rwlock *lock) {
    atomic_init(&lock->ticket, 0);
    atomic_init(&lock->write, 0);
    atomic_init(&lock->read, 0);
}

void read_lock(struct rwlock *lock) {
    const unsigned ticket = atomic_fetch_add(&lock->ticket, 1); // получаем очередной "номерок" и двигаем очередь на 1
    while (atomic_load(&lock->read) != ticket)                  // ждем пока наш "талончик" не вызовут
        __asm__("pause");                                       
    atomic_store(&lock->read, ticket + 1);                      // до входа в крит. сразу двигаем очередь читателей (fetch_add тоже ОК)
}                                                               // следующий читатель поступит также

void read_unlock(struct rwlock *lock) {
    atomic_fetch_add(&lock->write, 1);                          // только при выходе из крит.обл. продвигаем очередь писателей
}

void write_lock(struct rwlock *lock) {
    const unsigned ticket = atomic_fetch_add(&lock->ticket, 1); // получаем очередной "талончик"
    while (atomic_load(&lock->write) != ticket)                 // ждем пока наш "талончик" не вызовут
        __asm__("pause");   ;                                   
}                                                               // читатели и другие писатели войти не смогут

void write_unlock(struct rwlock *lock) {
    atomic_fetch_add(&lock->read, 1);                           // атомарно меняем "талончик" в очереди
    atomic_fetch_add(&lock->write, 1);                          // атомарно меняем "талончик" в очереди
}




/* tests */

typedef struct someArgs_tag {
    int id;
    int cnt;
} args_t;


void *writer(void *arg) {
    args_t * args = (args_t *) arg;

    for (int i = 0; i < args->cnt; ++i) {
        write_lock(&lock);
        ++CRITICAL_DATA;
        write_unlock(&lock);
    }

    return SUCCESS;
}

void *reader(void *arg) {
    args_t * args = (args_t *) arg;
    int accumulator = 0;
    int last = 0;
    for (int i = 0; i < args->cnt; ++i) {
        read_lock(&lock);
        if (CRITICAL_DATA != last)
            accumulator++;
        last = CRITICAL_DATA;
        read_unlock(&lock);
    }
    printf("Reader #%d acc=%d\n", args->id, accumulator);
    return SUCCESS;
}

int main(int argc, char **argv) 
{  
    pthread_t threadptrs[2*N];      // потоки читатели и писатели
    args_t args[2*N];               // аргументы (адинаковые)

    lock_init(&lock);               // блокировка

    int status_addr;
    int count = 500000;

    for (int i=0; i < N; ++i) {
        args[i].cnt = count;                                              // аргументы
        args[i].id = i;                                                   // 0-based
        pthread_create(&threadptrs[i], NULL, writer, (void *)&args[i]);   // писатели
    }
    for (int i=N; i < 2*N; ++i) {
        args[i].cnt = count;                                              // аргументы
        args[i].id = i-2;                                                 // 0-based
        pthread_create(&threadptrs[i], NULL, reader, (void *)&args[i]);   // читатели
    }
    for (int i=0; i != 2*N; ++i) 
        pthread_join(threadptrs[i], (void**)&status_addr);

    printf("%d write threads %d ++ops -> ", N, N*count);
    printf("%d\n", CRITICAL_DATA);

    return 0;
}