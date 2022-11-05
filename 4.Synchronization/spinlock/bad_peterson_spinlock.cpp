#include <atomic>
#include <memory>
#include <iostream>
#include <thread>
#include <map>  

using namespace std;


#define N 2

unsigned long long CRITICAL_DATA = 0;
static map <std::thread::id, int> number_by_id;

/* id потока от 0 до N */
int threadId() { return number_by_id[std::this_thread::get_id()]; }

// Алгоритм блокировки Петерсена (RMW-регистр) для 2-х потоков
// стабильности нет (с) - либо без ошибок весь тест, либо ни одного верного ответа ->
// Modern memory architectures are not what they were when this algorithm was invented. 
// Reads and writes to memory don't happen when you expect on a modern chip, and 
// sometimes don't happen at all.
// Atomic types require the compiler to issue appropriate store-release/load-acquire ordering
// https://channel9.msdn.com/Shows/Going+Deep/Cpp-and-Beyond-2012-Herb-Sutter-atomic-Weapons-1-of-2

// the empty loop has some undesirable effects like branch missprediction, thread starvation on HT processors
// and overly high power consumption - so in short, it is a pretty inefficient way to wait. The impact and
// solution are architecture, platform and application specific. I'm no expert, but the usual solution seems 
// to be to add either a cpu_relax() on linux or YieldProcessor() on windows to the loop body. 

// оказывается, на x86-архитектуре алгоритм не будет работать, так как операции чтения и записи в каждом 
// потоке могут быть переставлены. Может получиться так, что один поток проверит флаг другого потока до того,
//  как установит свой собственный флаг. Тогда возможна ситуация, в которой каждый поток будет думать, что 
//  другой поток не хочет получить доступ к критической секции, хотя на самом деле это не так.

// Для C++11 модель памяти — это SC-DRF ((sequential consistency for data-race-free programs)
// То есть C++, язык и библиотеки, предоставляют инструменты для избавления от состояний гонки. 
// И если состояний гонки действительно нет в вашем коде, компилятор C++ гарантирует последовательную согласованность. 
// В противном случае согласованность не гарантируется.

// если ваша программа имеет гонки данных (гонка данных - это когда несколько ядер/гиперпотоков могут 
// одновременно обращаться к одной и той же памяти), то ваша программа не является кроссплатформенной 
// из-за своей зависимости от модели памяти процессора

// Если вы используете мьютексы для защиты всех ваших данных, вам действительно не нужно беспокоиться. 
// Мьютексы всегда обеспечивали достаточные гарантии порядка и видимости. Теперь, если вы использовали атомы 
// или алгоритмы блокировки, вам нужно подумать о модели памяти. Модель памяти точно описывает, когда 
// атомистика обеспечивает гарантии порядка и видимости и обеспечивает переносные ограждения для 
// гарантированных вручную гарантий.

// C и C++ раньше определялись трассировкой выполнения правильно сформированной программы.
// Теперь они наполовину определены трассировкой выполнения программы, а наполовину апостериори 
// - многими упорядочениями объектов синхронизации.

// никакие навороты с барьерами не помогают, метод не рабочий полностью... своя модель памяти... только С99...
// volatile в C++ не оказывает никакого влияния на оптимизации процессора
struct p2_lock { 
    atomic_int flag[2];  // atomic<int>
    atomic_int last;
};

void lock_init(struct p2_lock * lock) {
    lock->flag[0] = lock->flag[1] = 0;
    lock->last = 0;
}

void lock_p2(struct p2_lock * lock) {
    const int me = threadId();        
    const int other = 1 - me;
    atomic_store_explicit(&lock->flag[me], 1, memory_order_relaxed);    // есть флаг намерения блокировки
    atomic_store_explicit(&lock->last, me, memory_order_acq_rel);      // последний - я (кто первый записал, тот и проскочит while(true))
                                                                        // если поменять порядок, то взаимное исключение не гарантируется...
    // atomic_exchange_explicit(&lock->last, me, memory_order_acq_rel);    // ни explicit ни exchange варианты не канают

    // нерабочий вариант
    // __asm__ volatile ("mfence" : : : "memory");                      // clobber директива, предотвращает компилятор от решения взять что-то из регистров,
    // do{_asm__ volatile ("":::"memory"); } while ...                  // заставляя обратиться к памяти за новыми значениям
    while ( atomic_load_explicit(&lock->last, memory_order_relaxed) == me  && // если у других есть намерения
        atomic_load_explicit(&lock->flag[other], memory_order_acquire) )// и last мой - то ждать (значит другой первым поставил свой last)
            continue;                                                     
}

void unlock_p2(struct p2_lock * lock) {
    const int me = threadId();
    atomic_store_explicit(&lock->flag[me], 0, memory_order_release);           // нет намерения блокировки
    // atomic_store(&lock->last, me);           // не нужно, расчет на ленивую логику в while(true)
}                                               

static struct p2_lock lock;

void threadFunction(int cnt)
{
    for (int i = 0; i < cnt; ++i) {
        lock_p2(&lock);
        ++CRITICAL_DATA;
        unlock_p2(&lock);
    }
}

void test_p2()
{
    
    lock_init(&lock);

    int n = 50;
    int count = 50000;

    printf("%d threads -> %d rounds of %d ops:\n", N, n, N*count);
    for (int k=0; k != n; ++k) 
    {   
        CRITICAL_DATA = 0;
        std::thread * threadpointer = new std::thread[N];

        for (int i=0; i!=N; ++i) {
            threadpointer[i] = thread(threadFunction, count);
            number_by_id.insert(make_pair(threadpointer[i].get_id(), i));   // {ID: int} словарь идиентификаторов
                                                                            // какой же уебанский синтаксис
        }
        for (int i=0; i!=N; ++i) {
            threadpointer[i].join();
        }
        
        if ( N*count != CRITICAL_DATA)               
            cout << "*" << flush;           // error
        else 
            cout << "." << flush;           // OK
        if ((k+1) % 10 == 0)
            cout << endl;
        // cout << CRITICAL_DATA << flush;
        delete [] threadpointer;
    }
    cout << "\n(*) if error\n" << endl;
}

int main() 
{
    cout << "Supported number of threads for concurency: " << std::thread::hardware_concurrency() << endl;

    if (N==2) 
        test_p2();
    else
        cout << "Even 2 thread does not sync... No way" << endl;

    return 0;
}
