#include <iostream>
using namespace std;

struct Head
{
    bool free;               // 4 байта
    unsigned size;           // 4 байта
};

int main()
{
    Head h;
    h.free = true;
    h.size = 1024*1024;

    cout << sizeof(h) << " " << sizeof(Head) << endl;
    cout << h.free << " " << h.size << endl;
    return 0;
}