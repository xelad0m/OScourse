/* В этом задании вам потребуется реализовать планировщик, использующий алгоритм Round Robin. Реализация планировщика состоит из нескольких функций:

    void scheduler_setup(int timeslice) - вызывается перед началом работы, а timeslice - квант времени, который нужно использовать в некоторых 
    единицах времени (что именно используется как единица времени, не существенно);
    void new_thread(int thread_id) - оповещает планировщик о новом потоке с идентификатором thread_id;
    void exit_thread() - оповещает планировщик о том, что текущий исполняемый на CPU поток завершился (соответственно, планировщик должен отдать CPU кому-то другому);
    void block_thread() - оповещает планировщик, что текущий исполняемый поток был заблокирован (например, запросил IO операцию и должен отдать CPU);
    void wake_thread(int thread_id) - оповещает, что поток с идентификатором thread_id был разблокирован (например, IO операция завершилась);
    void timer_tick() - вызывается через равные интервалы времени, нотифицирует, что прошла одна единица времени;
    int current_thread(void) - функция должна возвращать идентификатор потока, который сейчас должен выполняться на CPU, если такого потока нет, то нужно вернуть -1.

При выполнении задания каждый раз, когда поток выполняется на CPU и вызывается timer_tick, считайте, что поток отработал целую единицу времени на CPU. 
Т. е. даже если предыдущий поток добровольно освободил CPU (вызвав block_thread или exit_thread) и сразу после того, как CPU был отдан другому потоку, 
была вызвана функция timer_tick, то все равно считается, что второй поток отработал целую единицу времени на CPU.*/


#include <iostream>
#include <list>
#include <queue>
#include <algorithm>                                                    // итераторты тут штоле?

/**
 * Функция будет вызвана перед каждым тестом, если вы
 * используете глобальные и/или статические переменные
 * не полагайтесь на то, что они заполнены 0 - в них
 * могут храниться значения оставшиеся от предыдущих
 * тестов.
 *
 * timeslice - квант времени, который нужно использовать.
 * Поток смещается с CPU, если пока он занимал CPU функция
 * timer_tick была вызвана timeslice раз.
 **/

std::list <int> blocked;        // список приторможенных
std::queue <int> round_robin;   // очередь ожидающих
int TIMESLICE = 0;              // квант времени для работы потока
int TIKS_LEFT = 0;              // осталось отработать тиков
bool DEBUG = true;

void scheduler_setup(int timeslice)
{
    TIMESLICE = timeslice;                                              // смена состояния карусели после прохождения этого количества тиков
    TIKS_LEFT = TIMESLICE;
    // TIME = 0;
    blocked.clear();

    std::queue<int> empty;
    std::swap(round_robin, empty);
}

/**
 * Функция вызывается, когда создается новый поток управления.
 * thread_id - идентификатор этого потока и гарантируется, что
 * никакие два потока не могут иметь одинаковый идентификатор.
 **/
void new_thread(int thread_id)
{
    round_robin.push(thread_id);                                        // в конец карусели
}

/**
 * Функция вызывается, когда поток, исполняющийся на CPU,
 * завершается. Завершится может только поток, который сейчас
 * исполняется, поэтому thread_id не передается. CPU должен
 * быть отдан другому потоку, если есть активный
 * (незаблокированный и незавершившийся) поток.
 **/
void exit_thread()
{
    if (!round_robin.empty()) round_robin.pop();                        // просто удалить
    TIKS_LEFT = TIMESLICE;                                              // следующему дается ЦЕЛЫЙ квант (!)
}

/**
 * Функция вызывается, когда поток, исполняющийся на CPU,
 * блокируется. Заблокироваться может только поток, который
 * сейчас исполняется, поэтому thread_id не передается. CPU
 * должен быть отдан другому активному потоку, если таковой
 * имеется.
 **/
void block_thread()
{
    int & front = round_robin.front();                                  // возвращает по ссылке
    round_robin.pop();
    blocked.push_front(front);
    TIKS_LEFT = TIMESLICE;                                              // следующему дается ЦЕЛЫЙ квант (!)
}

/**
 * Функция вызывается, когда один из заблокированных потоков
 * разблокируется. Гарантируется, что thread_id - идентификатор
 * ранее заблокированного потока.
 **/
void wake_thread(int thread_id)                                         
{
    auto it = std::find(blocked.begin(), blocked.end(), thread_id);     // итератор
    if (it != blocked.end())                                            // если нашелся, то
    {
        blocked.erase(it);                                              // из приторможенных
        round_robin.push(thread_id);                                    // в конец очереди
    }
}

/**
 * Ваш таймер. Вызывается каждый раз, когда проходит единица
 * времени.
 **/
void report();

void timer_tick()
{   
    if (round_robin.empty())                                 // иначе случай, когда разбуженный процесс 
        TIKS_LEFT = TIMESLICE;                      
    else
        --TIKS_LEFT;
    if ( !TIKS_LEFT ) {                                      // пришло время крутить барабан
        int front = round_robin.front();
        round_robin.pop();
        round_robin.push(front);
        TIKS_LEFT = TIMESLICE;
    }
    if (DEBUG) report();
}

/**
 * Функция должна возвращать идентификатор потока, который в
 * данный момент занимает CPU, или -1 если такого потока нет.
 * Единственная ситуация, когда функция может вернуть -1, это
 * когда нет ни одного активного потока (все созданные потоки
 * либо уже завершены, либо заблокированы).
 **/
int current_thread() { return (round_robin.empty()) ? -1 : round_robin.front(); }


void report()
{
    std::cout << ((TIKS_LEFT-1)?"*":"." ) << " curr.thread: " << current_thread() << " -> ";

    std::cout << "blocked = { ";
    for (int n : blocked) { std::cout << n << ", "; }
    std::cout << "}; ";
    
    std::queue<int> copy = round_robin;
    std::cout << "queue = { ";
    while(!copy.empty()) {
        std::cout << copy.front() << ", ";
        copy.pop();
    }
    std::cout << "};\n";
}

void test1()
{
    scheduler_setup(2);
    new_thread(1);
    new_thread(2);
    new_thread(3);

    for (int i = 0; i < 10; i++)
        timer_tick();
    std::cout << "current thread: " << current_thread() << "\n";

}
void test2()
{
    scheduler_setup(2);
    new_thread(0);
    block_thread();
    timer_tick();
    new_thread(1);
    block_thread();
    timer_tick();
    wake_thread(0);
    new_thread(2);
    block_thread();
    timer_tick();
    wake_thread(1);
    new_thread(3);
    block_thread();
    timer_tick();
    timer_tick();
    timer_tick();
    std::cout << "current thread: " << current_thread() << "\n";
}

int main()
{
    test1();
    test2();

    return 0;
}