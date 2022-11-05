#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int get_rand_range(const int min, const int max) 
{
    int res = rand() % (max - min) + min;
    return res;
}

int main(void)
{
    srand(time(NULL));

    for (int i=0; i!= 10; ++i)
        printf("%d\n", get_rand_range(50, 100));

    return 0;
}

