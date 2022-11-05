
/* spinlock sync example */

#include "thread.h"         // create_thread, destroy_thread, mutex etc

int DEBUG = 0;
int TRACE = 0;

static unsigned CRITICAL_DATA = 0;
static struct rwlock cdata_spinlock;

int get_rand_range(const int min, const int max) {
    return rand() % (max - min) + min;
}

/* tests */ 

typedef struct someArgs_tag {
    int id;
    int cnt;
} args_t;

static int writer(void *arg) {
    args_t * args = (args_t *) arg;
    for (int i = 0; i < args->cnt; ++i) {
        write_lock(&cdata_spinlock);
        ++CRITICAL_DATA;
        write_unlock(&cdata_spinlock);
    }

    return 0;
}

static int reader(void *arg) {
    args_t * args = (args_t *) arg;
    int slippage = 0;
    int last = 0;
    for (int i = 0; i < args->cnt; ++i) {
        read_lock(&cdata_spinlock);
        if (CRITICAL_DATA != last)
            slippage++;							// пропустили момент, когда данные изменились
        last = CRITICAL_DATA;
        read_unlock(&cdata_spinlock);
    }
    printf("Reader #%d slippage=%d (task starvation counter) CRITICAL_DATA=%d\n", args->id, slippage - 1, CRITICAL_DATA);
    return 0;
}

int main(void)
{
	int num_writers = 8;
	int num_readers = 2;
	int counter = 125000;	

	struct thread *thread[MAX_THREADS];
	args_t args[MAX_THREADS];	

	ticket_spinlock_init(&cdata_spinlock);
	
	for (int i=0; i!=num_writers; ++i) {
		args[i].id = i;		
		args[i].cnt = counter;											
		thread[i] = create_thread(&writer, (void*)&args[i]);		
	}
	for (int i=num_writers; i != (num_writers + num_readers); ++i) {
		args[i].id = i - num_writers;
		args[i].cnt = counter;
		thread[i] = create_thread(&reader, (void*)&args[i]);
	}

    scheduler_setup();
	for (int i=0; i != (num_writers + num_readers); ++i)
    	thread_start(thread[i]);

	struct threads_list tl;
	tl.first = &thread[0];			                // я не умею в Си...
	tl.n = num_writers + num_readers;				// засылаем ссылку на все созданные потоки вот как-то так вот...
	scheduler_idle((void*)&tl);

	return 0;
}
