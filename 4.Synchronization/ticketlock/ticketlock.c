// gcc -g ./spinlock.c -o ./spinlock -lpthread -std=c99

#include <pthread.h>
#include <stdio.h>
#include <stdbool.h>
#include <stdatomic.h>

#define N 4

#define ERROR_CREATE_THREAD -11
#define ERROR_JOIN_THREAD   -12
#define BAD_MESSAGE         -13
#define SUCCESS               0

static int CRITICAL_DATA = 0;

/* ticket lock implementation */
struct ticket_lock { 
    atomic_uint ticket;                                         // текущий "талончик"
    atomic_uint next;                                           // следующий, кто получит блокировку
}lock;                                                          // синтаксис Си - сразу объяляется переменная
// static struct ticket_lock lock2;                                // остальные переменные как обычно

void lock_init(struct ticket_lock *lock) {
    atomic_init(&lock->ticket, 0);
    atomic_init(&lock->next, 0);
}
    
void spin_lock(struct ticket_lock *lock) {
    const unsigned ticket = atomic_fetch_add(&lock->ticket, 1); // получаем очередной "талончик"
    while (atomic_load(&lock->next) != ticket) continue;        // ждем пока наш "талончик" не вызовут
}                                                               

void spin_unlock(struct ticket_lock *lock) {
    atomic_fetch_add(&lock->next, 1);                           // атомарно меняем "талончик" в очереди
}



/* tests */

typedef struct someArgs_tag {
    int id;
    int cnt;
} args_t;


void *routine0(void *arg) {
    args_t * args = (args_t *) arg;
    const int id = args->id;
    for (int i = 0; i < args->cnt; ++i) {
        spin_lock(&lock);
        ++CRITICAL_DATA;
        spin_unlock(&lock);
    }
    return SUCCESS;
}

int main(int argc, char **argv) 
{  
    args_t args[N];                 // аргументы
    pthread_t threadptrs[N];        // потоки

    lock_init(&lock);               // блокировка

    int status_addr;
    int count = 250000;
    printf("%d thread %d ++ops -> ", N, N*count);

    for (int i=0; i < N; ++i) {
        args[i].cnt = count;                                                // аргументы
        args[i].id = i;                                                     // 0-based (тут не используется)
        pthread_create(&threadptrs[i], NULL, routine0, (void *)&args[i]);   // потоки
    }
    for (int i=0; i != N; ++i) 
        pthread_join(threadptrs[i], (void**)&status_addr);

    printf("%d\n", CRITICAL_DATA);

    return 0;
}
