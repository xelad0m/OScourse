/* mutex sync example */

#include "thread.h"         // create_thread, destroy_thread, mutex etc
					

int DEBUG = 0;
int TRACE = 0;

static struct mutex mtx_read;
static struct mutex mtx_write;

static unsigned CRITICAL_DATA = 0;

int get_rand_range(const int min, const int max) {
    return rand() % (max - min) + min;
}

/* tests */ 

struct args_t{	
	int id; 								// тут id не тот же, что мы присваиваем при создании потока (thread->ID)
};											// т.к. нужно, чтобы он был доступен в самом потоке (например, через аргумент)

int thread_writer(void *arg)
{
	struct args_t *args = (struct args_t *)arg;
	const int id = args->id;
	int avrg_lat = get_rand_range(50, 1250);

	while (1) {
		mutex_lock(&mtx_write);
		int crit_lat = get_rand_range(0, 25);
		++CRITICAL_DATA;
		printf("-> Write thread #%d (latency=%d ms), CRITICAL_DATA=%d\n", id, avrg_lat + crit_lat, CRITICAL_DATA);
		delay(crit_lat);
		mutex_unlock(&mtx_write);

		delay(avrg_lat + crit_lat);			// outside delay
	}
	return 0;
}

int thread_reader(void *arg)
{
	struct args_t *args = (struct args_t *)arg;
	const int id = args->id;
	int avrg_lat = get_rand_range(50, 1250);

	while (1) {
		mutex_lock(&mtx_read);											// с мьютексом читает 1 раз и становится на блокировку (последним в очереди ожидания разблокировки)
		int crit_lat = get_rand_range(0, 25);
		printf("-> Read thread #%d (latency=%d ms), CRITICAL_DATA=%d\n", id, avrg_lat + crit_lat, CRITICAL_DATA);
		delay(crit_lat);
		mutex_unlock(&mtx_read);

		delay(avrg_lat + crit_lat);			// outside delay
	}
	return 0;
}

int main(void)
{
	int num_writers = 5;
	int num_readers = 3;
	struct thread *thread[MAX_THREADS];
	struct args_t args[MAX_THREADS];									// хз как передать аргумент не константой (аргумент у всех 0, пошли они нахер с таким обучением)
																		// а, ну короче, вот так ...
	srand(time(NULL));

	mutex_init(&mtx_write);												// без инициализации - мусор в очереди ожидания, проскакивает проверку на пустоту очереди
	mutex_init(&mtx_read);													

	for (int i=0; i!=num_writers; ++i) {
		args[i].id = i;													
		thread[i] = create_thread(&thread_writer, (void*)&args[i]);		// c мьютексом Round Robin уже не будет крутить подряд, как со спинлоком
	}
	for (int i=num_writers; i != (num_writers + num_readers); ++i) {
		args[i].id = i - num_writers;
		thread[i] = create_thread(&thread_reader, (void*)&args[i]);
	}

    scheduler_setup();
	for (int i=0; i != (num_writers + num_readers); ++i)
    	thread_start(thread[i]);

	struct threads_list tl;
	tl.first = &thread[0];					// я не умею в Си...
	tl.n = num_writers + num_readers;				// засылаем ссылку на все созданные потоки вот как-то так вот...
	scheduler_idle((void*)&tl);
	
	// asm("int $3"); // Ловушка трассировки/останова для gdb (breakpoint)
	return 0;
}
