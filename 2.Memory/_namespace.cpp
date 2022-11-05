#include <iostream>

// зачем определять функции внутри...

void outer()
	{
        int a = 10;
        int b = 42;    
    }

	void inner()
	{
        std::cout << (a + b) << std::endl;
    }


int main()
{
    outer();
    
    return 0;
}