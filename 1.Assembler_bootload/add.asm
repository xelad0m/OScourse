.text
.global main
main:
    movq %rsp, %rbp #for correct debugging

    //Сложите два числа в регистрах RSI и RDX, результат должен быть в регистре RSI.
    //Вам разрешено пользоваться следующими регистрами общего назначения: 
    // RAX, RBX, RCX, RDX, RBP, RDI, RSI, R8 - R15.
    //В задании не предполагается использование стека, даже если вы знаете, что это такое.

    movq $42123, %RDX
    movq $123321, %RSI
    addq %RDX, %RSI

    xorq  %rax, %rax    
    ret
