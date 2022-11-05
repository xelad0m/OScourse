#include <iostream>
using namespace std;

struct integer
{
    int a;
};

int main()
{   
    integer i;
    i.a = sizeof(integer);
    // все размеры оказывается вычисляются на этапе компиляции, в ассемблер идут константами
    

    char s[3] = {'a', 'b', 'c'};
    char * p;

    p = &s[0];
    *(p + 1) = 'N';
    cout <<  (p+1) << "\n";

    return 0;
}