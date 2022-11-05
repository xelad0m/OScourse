
/* condition variable sync example */

#include "thread.h"         // create_thread, destroy_thread, mutex etc

int DEBUG = 0;
int TRACE = 0;

int get_rand_range(const int min, const int max) {
    return rand() % (max - min) + min;
}

/* tests */ 

struct condition cv;
struct mutex mtx;	
struct lock print_lock;
int value = 0;
int valid_value = 0;
int done = 0;

struct args_t{	
	int x; 
};

void produce(int x)
{
	if (DEBUG) printf("IN produce()\n");
	mutex_lock(&mtx);	
	while (valid_value)				// где оно получается первый раз?
		wait(&cv, &mtx);
	value = x;
	valid_value = 1;
	notify_one(&cv);
	mutex_unlock(&mtx);
	if (DEBUG) printf("OUT produce()\n");
}

void finish(void)
{
	mutex_lock(&mtx);
	done = 1;						// флаг для всех, что это последнее значение
	notify_all(&cv);				// разбудить всех (тут один спит, но по смыслу - будим всех, кто ждем на cv)
	mutex_unlock(&mtx);
}

int consume(int *x)
{
	int ret = 0;					// код нештатного возврата (из блокировки вышли, значения не получили)
	mutex_lock(&mtx);				// блок

	while (!valid_value && !done)	// тут два условия для нормальной работы и последнего значения
		wait(&cv, &mtx);			// поток получатель - в сон до следующего notify_...

	if (valid_value) {				// на валидном значении value
		*x = value;					// можно присвоить его общей переменной
		valid_value = 0;			// флаг, что забрали
		notify_one(&cv);			// разбудить следующего в очереди (а это у нас в примере один продюсер)
		ret = 1;					// код штатного возврата
	}
	mutex_unlock(&mtx);
	return ret;
}

int Producer(void *unused)
{
	(void) unused;

	for (int i = 0; i != 60; ++i) {
		const int x = rand();				// const в рамках блока {}

		printf("produce %d\n", x);			// thread unsafe but OK
		produce(x);
		delay(1000);
	}
	finish();
	return 0;
}

int Consumer(void *unused)
{
	(void) unused;
	int x;

	while (consume(&x)) {
		printf("consumed %d\n", x);
	}
	return 0;
}


int main(void)
{
	int num_prod = 1;
	int num_cons = 1;
	struct thread *thread[MAX_THREADS];
	struct args_t args[MAX_THREADS];	

	srand(time(NULL));

	mutex_init(&mtx);
	lock_init(&print_lock);
	condition_init(&cv); /* инициализировать!!!, иначе очередь ожидания пустая, но проверку проходит как полная -> обращение по 0 адресу */

	for (int i=0; i!=num_prod; ++i) {
		args[i].x = 0;													
		thread[i] = create_thread(&Producer, (void*)&args[i]);
	}
	for (int i=num_prod; i != (num_prod + num_cons); ++i) {
		args[i].x = 0;
		thread[i] = create_thread(&Consumer, (void*)&args[i]);
	}

    scheduler_setup();
	for (int i=0; i != (num_prod + num_cons); ++i)
    	thread_start(thread[i]);

	struct threads_list tl;
	tl.first = &thread[0];					// я не умею в Си...
	tl.n = num_prod + num_cons;				// засылаем ссылку на все созданные потоки вот как-то так вот...
	scheduler_idle((void*)&tl);

	return 0;
}
