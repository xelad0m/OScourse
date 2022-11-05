#include <iostream>    
using namespace std;    

int main()
{
    /* методом научного тыка выясняем, как записать чето по адресу типа void */
    void * ptr = malloc(64);
    cout << ptr << endl;

    int i = 42;
    int * pi = (int *) ptr;
    cout << pi << endl;

    *pi = i;
    cout << *((int*) ptr) << endl;
    cout << pi << endl;

    int * p = (int*) ptr;
    *(p + 1) = 45;
    cout << *(p + 1) << endl;   // 45
    cout << (p + 1) << endl;    // +4 bytes

    p = p + 1;
    cout << ptr << endl;
    cout << p << endl;

    // треш
    unsigned asize = 101 + 2 - 101 % 2;
    cout << asize << endl;

    for (int k=10;k>=0;k--)
        cout << k << endl;

    return 0;
}