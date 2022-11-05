#include <atomic>
#include <memory>
#include <iostream>
#include <thread>

using namespace std;

class SpinLock {
    std::atomic_flag locked = ATOMIC_FLAG_INIT;
public:
    void lock() {
        while (locked.test_and_set(std::memory_order_acquire)) { 
            continue; }
    }
    void unlock() {
        locked.clear(std::memory_order_release);
    }
};

class Accumulator {
    unsigned long long CRITICAL_DATA;
    SpinLock *spinlock;
public:
    Accumulator() { 
        CRITICAL_DATA = 0; 
        spinlock = new SpinLock();
    }
    ~Accumulator() { delete spinlock; }
    void add() {
        spinlock->lock();
        CRITICAL_DATA++;
        spinlock->unlock();
    }
    unsigned long long get() { return CRITICAL_DATA; }
};


void threadFunction(int cnt, Accumulator &acc_obj)  // умеет парсить аргументы (с++11 ??)
{   
    for (int i = 0; i < cnt; ++i)
        acc_obj.add();
}

int main() 
{
    int N = 20;
    std::thread * threadpointer = new std::thread[N];

    Accumulator accumulator_object;

    int count = 50000;

    for (int i=0; i != N; ++i)
        threadpointer[i] = thread(threadFunction, count, std::ref(accumulator_object)); // по ссылке в поток &obj не понимает
    for (int i=0; i!=N; ++i)
        threadpointer[i].join();
        
    delete [] threadpointer;

    cout << N*count << " -> " << accumulator_object.get() << endl;
    return 0;
}
