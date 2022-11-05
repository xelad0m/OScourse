# global data  #
    .data
format: .ascii "%d\n"

.text
.global main
main:
    movq %rsp, %rbp #for correct debugging
    //Теперь более сложное задание. Вам требуется написать функцию pow, которая принимает на вход два 
    //беззнаковых числа x и p (в регистрах RDI и RSI соответственно) и возвращает значение x^p
    //в регистре RAX. Гарантируется, что x и p не могут быть равны 0 одновременно 
    //(по отдельности они все еще могут быть равны 0). Также гарантируется, что ответ помещается в 64 бита.
    
    // tests
    movq $6, %rdi
    movq $6, %rsi
    
pow:
    movq $0, %r8                # counter
    movq $1, %rax               # x ^ 0
_less:
    cmpq %r8, %rsi              # p - counter 
    ja _mult                    # p - counter > 0
    jmp _exit
_mult:
    incq %r8                    # counter += 1
    mulq %rdi                   # rax * rdi
    jnz _less                   # rax * rdi != 0 (rdi != 0)
_exit:
   
    xorq  %rax, %rax
    ret
