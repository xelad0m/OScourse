/* wait-die (like linux 4.x) sync example */

/*Тяжелое задание этой недели. Реализовать Wait/Die блокировки, которые позволяют избежать deadlock-ов.
Решать это задание можно только на языке C. Вам будут доступны блокировки (struct lock), переменные состояния (struct condition) 
и атомарные Read/Modify/Write регистры (atomic_int, atomic_uint, atomic_short, atomic_ushort, atomic_long, atomic_ulong, 
atomic_llong, atomic_ullong) с интерфейсом, который использовался в видео.

Проверяющая система будет оценивать вашу реализацию на ряде простых однопоточных тестов:

    если только один поток пытается захватить блокировку, то захват должен быть успешным
    попытка захвата одной блокировки несколько раз из одного потока не должна приводить к deadlock-у

Кроме простых однопоточных тестов, естественно, будет и многопоточный: несколько потоков будут пытаться захватить блокировки в 
таком порядке, который с большой вероятностью приведет к deadlock-у. Если ваше решение не укладывается в лимит времени, значит 
в вашем коде скорее всего случился deadlock.
*/

/* Напоминание, как выглядят интерфейсы блокировки и переменной
   состояния.

   ВАЖНО: обратите внимание на функции lock_init и condition_init,
          я не уделял этому внимание в видео, но блокировки и
          переменные состояния нужно инциализировать.
*/

#include "thread.h"         // create_thread, destroy_thread, mutex etc

#define num_prod 10			// количество продюсеров
#define num_cons 0			// количество консьюмеров 
// wdlock не предоставляет такого интерфейса синхронизации/сигнализации как cv, а только гарантирует от дедлоков при захвате большого числа блокировок
// поэтому продюсер-консьюмер модель тут неприменима напрямую

int DEBUG = 0;
int TRACE = 0;


int get_rand_range(const int min, const int max) {
    return rand() % (max - min) + min;
}

/* tests */ 
struct wdlock wd_locks_p[num_prod];							// блокировок по количеству продюсеров
struct wdlock wd_locks_c[num_cons];							// блокировок по количеству консюмеров
int block_failure_flag = 0;

struct condition consume_cv;								// консьюмеры ждут на cv
struct mutex consume_mtx;	
struct condition produce_cv;								// продюсеры ждут на cv
struct mutex produce_mtx;	

int value = 0;
int valid_value = 0;										// счетчик получателей
int done = num_prod;										// счетчик активных продюсеров

struct args_t{	
	int id; 
};

void produce(int x)
{	
	if (DEBUG) printf("IN produce()\n");
	struct wdlock_ctx ctx;                                  // созд. контекст
    wdlock_ctx_init(&ctx);                                  // инициализ. контекст

    while (1) {    
		block_failure_flag = 0;                             // цикл захвата необходимых блокировок
		for (int i=0; i != num_prod; ++i)
			if (!wdlock_lock(&wd_locks_p[i], &ctx)) {			// если хоть одна из блокировок не захватилась
				wdlock_unlock(&ctx);                        // отпустить все захваченные блокировки (вписанные в контекст)
				if (DEBUG) printf("IN produce() wdlock failure\n");
				block_failure_flag = 1;						// не удалось захватить
				break;                                   	// выйти из цикла for
			}
		if (block_failure_flag) continue;					// если не доделали цикл for, то цикл while заново
		break;												// если все таки удалось захватить все блокировки - можно приступать к работе
	}

	/* payload */
	// mutex_lock(&produce_mtx);
	
	// while (valid_value)										// пока каждый коньюмер не забрал предыдущее значение
	// 	wait(&produce_cv, &produce_mtx);					// ждем на той же условной переменной
	value = x;
	valid_value = num_cons;									// по числу получателей
	// notify_all(&consume_cv);								// налетай, значение привезли
	
	// mutex_unlock(&produce_mtx);

	wdlock_unlock(&ctx);                                 	// отпустить все блокировки, вписанные в контекст
	if (DEBUG) printf("OUT produce()\n");
}

void finish(void)
{	
	struct wdlock_ctx ctx;                                  // созд. контекст
    wdlock_ctx_init(&ctx);                                  // инициализ. контекст
    while (1) {    
		block_failure_flag = 0;                             // цикл захвата необходимых блокировок
		for (int i=0; i != num_prod; ++i)
			if (!wdlock_lock(&wd_locks_p[i], &ctx)) {		// если хоть одна из блокировок не захватилась
				wdlock_unlock(&ctx);                        // отпустить все захваченные блокировки (вписанные в контекст)
				block_failure_flag = 1;						// не удалось захватить
				break;                                   	// выйти из цикла for
			}
		if (block_failure_flag) continue;					// если не доделали цикл for, то цикл while заново
		break;												// если все таки удалось захватить все блокировки - можно приступать к работе
	}
	/* payload */
	done--;													// последнее значение данного продюсера
	// notify_all(&consume_cv);								// разбудить всех

	wdlock_unlock(&ctx); 
}

int consume(int *x)
{
	if (DEBUG) printf("IN consume()\n");

	int ret = 0;											// код нештатного возврата (из блокировки вышли, значения не получили)

	struct wdlock_ctx ctx;                                  // созд. контекст
    wdlock_ctx_init(&ctx);                                  // инициализ. контекст
    while (1) {    
		block_failure_flag = 0;                             // цикл захвата необходимых блокировок
		for (int i=0; i != num_cons; ++i)
			if (!wdlock_lock(&wd_locks_c[i], &ctx)) {		// если хоть одна из блокировок не захватилась
				wdlock_unlock(&ctx);                        // отпустить все захваченные блокировки (вписанные в контекст)
				block_failure_flag = 1;						// не удалось захватить
				break;                                   	// выйти из цикла for
			}
		if (block_failure_flag) continue;					// если не доделали цикл for, то цикл while заново
		break;												// если все таки удалось захватить все блокировки - можно приступать к работе
	}

	/* payload */
	// mutex_lock(&produce_mtx);

	while (!valid_value && done)							// тут два условия для нормальной работы и последнего значения
		wait(&consume_cv, &produce_mtx);					// поток получатель - в сон до следующего notify_...

	if (valid_value) {										// на валидном значении value
		*x = value;											// можно присвоить его общей переменной
		valid_value--;										// флаг, что забрали 1 раз
		notify_one(&consume_cv);							// разбудить следующего в очереди
		ret = 1;											// код штатного возврата
	}

	// mutex_unlock(&produce_mtx);

	if (DEBUG) printf("OUT consume()\n");

	wdlock_unlock(&ctx); 
	return ret;
}

int Producer(void *arg)
{
	struct args_t *args = (struct args_t *) arg;

	for (int i = 0; i != 10; ++i) {
		const int x = rand() % 1000;						// const в рамках блока {}
		printf("#%d produced %d\n", args->id, x);	
		produce(x);
		int lat = get_rand_range(250, 1250);
		delay(lat);
	}
	finish();
	if (DEBUG) printf("Producer() FINISHED\n");
	return 0;
}

int Consumer(void *arg)
{
	struct args_t *args = (struct args_t *) arg;
	int x;

	while (consume(&x)) {
		printf("#%d consumed %d\n", args->id, x);
	}
	
	if (DEBUG) printf("Consumer() FINISHED\n");
	return 0;
}

// int Work1 (void *arg)
// {
// 	struct wdlock_ctx ctx;                                  // созд. контекст
//     wdlock_ctx_init(&ctx);                                  // инициализ. контекст

//     while (1) {    
// 		if (!wdlock_lock(&wd_locks_p[0], &ctx)) {
// 			wdlock_unlock(&ctx);
// 			delay(2000);
// 			continue;
// 		}
// 		if (!wdlock_lock(&wd_locks_p[1], &ctx)) {
// 			wdlock_unlock(&ctx);
// 			delay(2000);
// 			continue;
// 		}
// 		break;
// 	}

// 	printf("Work1\n");
	
// 	wdlock_unlock(&ctx); 
// 	return 0;
// }

// int Work2(void *arg)
// {
// 	struct wdlock_ctx ctx;                                  // созд. контекст
//     wdlock_ctx_init(&ctx);                                  // инициализ. контекст

//     while (1) {    
// 		if (!wdlock_lock(&wd_locks_p[1], &ctx)) {
// 			wdlock_unlock(&ctx);
// 			delay(2000);
// 			continue;
// 		}
// 		if (!wdlock_lock(&wd_locks_p[0], &ctx)) {
// 			wdlock_unlock(&ctx);
// 			delay(2000);
// 			continue;
// 		}
// 		break;
// 	}

// 	printf("Work2\n");

// 	wdlock_unlock(&ctx); 
// 	return 0;
// }

int main(void)
{	
	/* Work1 Work2 */
	// struct thread *threadpointers[MAX_THREADS];
	// struct args_t args[MAX_THREADS];	
	// for (int i=0; i!= num_prod; ++i)
	// 	wdlock_init(&wd_locks_p[i]);	

	// args[0].id = 0;

	// threadpointers[0] = create_thread(&Work1, (void*)&args[0]);
	// threadpointers[1] = create_thread(&Work2, (void*)&args[0]);
    
	// scheduler_setup();
	// thread_start(threadpointers[0]);
	// thread_start(threadpointers[1]);

	// struct threads_list tl;
	// tl.first = &threadpointers[0];			
	// tl.n = 2;				
	// scheduler_idle((void*)&tl);



	srand(time(NULL));
	struct thread *threadpointers[MAX_THREADS];
	struct args_t args[MAX_THREADS];	

	mutex_init(&consume_mtx);
	condition_init(&consume_cv);
	mutex_init(&produce_mtx);
	condition_init(&produce_cv);

	// инициализировать замки можно только предварительно, если вместе с созданием потоков
	// в циклах ниже, то будут пытаться захватить еще неинициализированные (!)
	for (int i=0; i!= (num_prod + num_cons); ++i)
		wdlock_init(&wd_locks_p[i]);	
		
	for (int i=0; i!=num_prod; ++i) {
		args[i].id = i;													
		threadpointers[i] = create_thread(&Producer, (void*)&args[i]);
	}
	for (int i=num_prod; i != (num_prod + num_cons); ++i) {
		args[i].id = i - num_prod;
		threadpointers[i] = create_thread(&Consumer, (void*)&args[i]);
	}

    scheduler_setup();
	for (int i=0; i != (num_prod + num_cons); ++i)
    	thread_start(threadpointers[i]);

	struct threads_list tl;
	tl.first = &threadpointers[0];			// я не умею в Си...
	tl.n = num_prod + num_cons;				// засылаем ссылку на все созданные потоки вот как-то так вот...
	scheduler_idle((void*)&tl);

	return 0;
}
