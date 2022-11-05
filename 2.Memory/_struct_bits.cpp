#include <iostream>
using namespace std;

struct Head
{
    bool free:1;                // 1 bit
    unsigned size:31;           // 31 bit
};

int main()
{
    Head h;
    h.free = true;
    h.size = 1024*1024;

    Head * ph = &h;
    ph->free = false;
    ph->size = 512;

    cout << sizeof(h) << " " << sizeof(Head) << endl;
    cout << h.free << " " << h.size << endl;
    return 0;
}