
// gcc -g ./*.c -o ./* -lpthread -std=c99

// скорость впечатляет, большое число потоков - не проблема

#include <pthread.h>
#include <stdio.h>
#include <stdatomic.h>

#define N 10

#define ERROR_CREATE_THREAD -11
#define ERROR_JOIN_THREAD   -12
#define BAD_MESSAGE         -13
#define SUCCESS               0

static int CRITICAL_DATA = 0;


typedef struct someArgs_tag {
    int id;
    int cnt;
} args_t;

void *writer(void *arg) {
    args_t * args = (args_t *) arg;

    for (int i = 0; i < args->cnt; ++i)
        atomic_fetch_add(&CRITICAL_DATA, 1);                            // самый простой случай   

    return SUCCESS;
}

int main(int argc, char **argv) 
{  
    pthread_t threadptrs[N];      // потоки 
    args_t args[N];               // аргументы

    int status_addr;
    int count = 5000000;

    for (int i=0; i < N; ++i) {
        args[i].cnt = count;                                              // аргументы
        args[i].id = i;                                                   // 0-based
        pthread_create(&threadptrs[i], NULL, writer, (void *)&args[i]);   // писатели
    }

    for (int i=0; i != N; ++i) 
        pthread_join(threadptrs[i], (void**)&status_addr);

    printf("%d write threads %d ++ops -> ", N, N*count);
    printf("%d\n", CRITICAL_DATA);

    return 0;
}