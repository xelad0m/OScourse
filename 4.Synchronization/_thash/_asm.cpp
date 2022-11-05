#include <iostream>
using namespace std;

int sum(int a, int b)
{
    return 0;
}

int move(int a, int b)
{
    asm (R"(movl %1, %%eax; 
          movl %%eax, %0;)"
         :"=r"(b)        /* output */
         :"r"(a)         /* input */
         :"%eax"         /* clobbered register */
         );
    
    return b;
}

void * idtr_addr() {
	void * idtr;                    
    asm("sidt %0\n" 
    : 
    :"m"(idtr)
    :
    );  // the value of idtr is stored in the memory location loc
                                    // Interrupt Descriptor Table - в недоступной процессу области памяти
    return idtr;                    // поэтому *** stack smashing detected ***: terminated 
    // а если отключить защиту стека при компиляции (-fno-stack-protector), то Exception has occurred. Bus error
}

static void * stack_addr() {
    static void * stack;
    asm("movq %%rsp, %0\n" 
    : /*no output*/
    : "m"(stack)
    : "cc", "memory"
    );
    return stack;                              // эт получается, чтоб контекст потока сохранить, надо отдельно подключать
    // т.е. функцией нельзя полюбому, значит можно дефайном (макросом) !!!
}


void pointer()
{
    void * p = nullptr;
    struct dummy {
        int i = 42;
        double d = 3.14;
    };

}



int main()
{   
    int a = 42, b;
    move(a, b);
    cout << b << "\n";

    cout << stack_addr() << "\n";
    static void * stack;
    asm("movq %%rsp, %0\n" : :"m"(stack));
    cout << stack << "\n";

    return 0;
}