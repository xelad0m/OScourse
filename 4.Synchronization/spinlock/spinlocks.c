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

/* memory fence implementation */
struct p2_fence_lock_t {
    volatile bool flag[2];
    volatile int victim;
};

void p2_fence_lock_init(struct p2_fence_lock_t *lock) {     // в С нет ссылок &, только указатели * и взятие адреса &
    lock->flag[0] = lock->flag[1] = false;
    lock->victim = 0;
}

void p2_fence_lock(struct p2_fence_lock_t *lock, int id) {
    lock->flag[id] = true;  
    lock->victim = id;      
    __asm__ volatile ("mfence" : : : "memory");             // инстукция компилятору при оптимизации обеспечить строгое разделение кода
                                                            // инструкций обращения к памяти, расположенных до этого барьера и после
    while (lock->flag[1 - id] && lock->victim == id)
        continue;
}

void p2_fence_unlock(struct p2_fence_lock_t *lock, int id) {
    lock->flag[id] = false;
}

/* stdatomic 2 threads lock implementation */
struct p2_atomic_lock_t {
    atomic_bool flag[2];
    atomic_int last;
};

void p2_atomic_lock_init(struct p2_atomic_lock_t *lock) {   // в С нет ссылок &, только указатели * и взятие адреса &  
    atomic_init(&lock->flag[0], false);
    atomic_init(&lock->flag[1], false);
    atomic_init(&lock->last, 0);
}

void p2_atomic_lock(struct p2_atomic_lock_t *lock, int id) {
    atomic_store(&lock->flag[id], true);
    atomic_store(&lock->last, id);  
    while ( atomic_load(&lock->flag[1-id]) &&               // если у других есть намерения
           atomic_load(&lock->last) == id )
        continue;
}

void p2_atomic_unlock(struct p2_atomic_lock_t *lock, int id) {
    atomic_store(&lock->flag[id], false);
}

/* stdatomic N threads lock implementation */
struct N_atomic_lock_t {
    atomic_int level[N];
    atomic_int last[N-1];
};

void N_atomic_lock_init(struct N_atomic_lock_t *lock) {     // в С нет ссылок &, только указатели * и взятие адреса &  
    for (int i=0; i!= (N-1); ++i) {
        atomic_init(&lock->level[i], 0);                    // уровни, до которых дошли "победители" в захвате блокировки
        atomic_init(&lock->last[i], 0);                     // "раунды" по захвату блокировки
    }
    atomic_init(&lock->level[N-1], 0);
}

void __prnt_lock(struct N_atomic_lock_t *lock)
{   
    fprintf(stderr, "lock->level: ");
    for (int i=0; i!= N; ++i) 
        fprintf(stderr, "%d", atomic_load(&lock->level[i]));
    fprintf(stderr, ", lock->last: ");
    for (int i=0; i!= N-1; ++i) 
        fprintf(stderr, "%d", atomic_load(&lock->last[i]));
    fprintf(stderr, "\n");
}

int level_winner(const struct N_atomic_lock_t *lock, int me, int i) {    
    for (int i=0; i != N; ++i)                              // если еще кто-то на этом уровне (конкурент)
        // if (i != me && atomic_load(&lock->level[i]) == atomic_load(&lock->level[me]) )
        if (i != me && lock->level[i] == lock->level[me] )
            return 0;                                       // -> сравнение кто был первый                                     
    return 1;                                               // -> иначе, сравнение кто первый можно пропустить
}

void N_atomic_lock(struct N_atomic_lock_t *lock, int me) {
    for (int i=0; i!=N-1; ++i) { 
        atomic_store(&lock->level[me], i+1);                // намерены заблокировать этот уровень i
        atomic_store(&lock->last[i], me);                   // на этом уровне мы первые поставили блокировку
        while ( !level_winner(lock, me, i) &&               // если НЕ только (me) на уровене (i)
            (atomic_load(&lock->last[i]) == me) );          // и если мы были не первые - ждем, пока остальные разблокируют
    }
}

void N_atomic_unlock(struct N_atomic_lock_t *lock, int me) {
    atomic_store(&lock->level[me], 0);                      // освободили уровень
}


/* tests */

static struct N_atomic_lock_t lock;

typedef struct someArgs_tag {
    int id;
    int cnt;
} args_t;


void *routine0(void *arg) {
    args_t * args = (args_t *) arg;
    const int id = args->id;
    for (int i = 0; i < args->cnt; ++i) {
        N_atomic_lock(&lock, id);
        ++CRITICAL_DATA;
        N_atomic_unlock(&lock, id);
        // for (int ff = 0; ff < 100/; ++ff);
    }
    // fprintf(stderr, "FIN #%d\n", id); 
    return SUCCESS;
}

int main(int argc, char **argv) 
{  
    args_t args[N];                 // аргументы
    pthread_t threadptrs[N];        // потоки

    N_atomic_lock_init(&lock);      // блокировка

    int status_addr;
    int count = 250000;
    printf("%d thread %d ++ops -> ", N, N*count);

    for (int i=0; i < N; ++i) {
        args[i].cnt = count;                                                // аргументы
        args[i].id = i;                                                     // 0-based
        pthread_create(&threadptrs[i], NULL, routine0, (void *)&args[i]);   // потоки
    }
    for (int i=0; i != N; ++i) 
        pthread_join(threadptrs[i], (void**)&status_addr);

    printf("%d\n", CRITICAL_DATA);

    return 0;
}
