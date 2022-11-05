
#include "thread.h"         // create_thread, destroy_thread, mutex
#include "sched.h"			// scheduler_setup, new_thread

static struct mutex mtx_read;
static struct mutex mtx_write;

static unsigned CRITICAL_DATA = 0;

int get_rand_range(const int min, const int max) {
    return rand() % (max - min) + min;
}

static int thread_writer(void *arg)
{
	const int id = (intptr_t)arg;
	int avrg_lat = get_rand_range(50, 1250);

	while (1) {
		mutex_lock(&mtx_write);
		int crit_lat = get_rand_range(0, 25);
		++CRITICAL_DATA;
		printf("-> Write thread #%d (latency=%d ms), CRITICAL_DATA=%d\n", id, avrg_lat + crit_lat, CRITICAL_DATA);
		delay(crit_lat);
		mutex_unlock(&mtx_write);

		delay(avrg_lat + crit_lat);
	}
	return 0;
}

static int thread_reader(void *arg)
{
	const int id = (intptr_t)arg;
	int avrg_lat = get_rand_range(50, 1250);

	while (1) {
		mutex_lock(&mtx_read);													// с мьютексом читает 1 раз и становится на блокировку (последним в очереди ожидания разблокировки)
		int crit_lat = get_rand_range(0, 25);
		printf("-> Read thread #%d (latency=%d ms), CRITICAL_DATA=%d\n", id, avrg_lat + crit_lat, CRITICAL_DATA);
		delay(crit_lat);
		mutex_unlock(&mtx_read);

		delay(avrg_lat + crit_lat);
	}
	return 0;
}

static struct thread *thread[10];

int main(void)
{
	srand(time(NULL));
	
	mutex_setup(&mtx_write);												// без инициализации - мусор в очереди ожидания, проскакивает проверку на пустоту очереди
	mutex_setup(&mtx_read);													

	// for (int i=0; i!=N; ++i)
	//     thread[i] = create_thread(&thread_writer, (void*)0);				// хз как передать аргумент не константой (аргумент у всех 0, пошли они нахер с таким обучением)
	
	thread[0] = create_thread(&thread_writer, (void*)0);
	thread[1] = create_thread(&thread_writer, (void*)1);
	thread[2] = create_thread(&thread_writer, (void*)2);
	thread[3] = create_thread(&thread_writer, (void*)4);
	thread[4] = create_thread(&thread_writer, (void*)5);

	thread[5] = create_thread(&thread_reader, (void*)0);
	thread[6] = create_thread(&thread_reader, (void*)1);
	thread[7] = create_thread(&thread_reader, (void*)2);


    scheduler_setup();
	for (int i=0; i!=8; ++i)
    	thread_start(thread[i]);

	scheduler_idle();

	return 0;
}