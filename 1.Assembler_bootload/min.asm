.text
.global main
main:
    movq %rsp, %rbp #for correct debugging
    # write your code here
    //Попробуйте по аналогии с примером в лекции написать функцию, 
    //возвращающую минимум из двух переданных ей аргументов. Аргументы 
    //(беззнаковые целые числа) передаются в регистрах RDI и RSI. 
    //Результат работы функции должен быть сохранен в регистре RAX.
    
    // testing sample
    movq $112, %RSI
    movq $234, %RDI
    
min:
    movq %rdi, %rax         # предположим rdi меньше, ответ будет в rax
    cmpq %rdi, %rsi         # rsi - rdi
    ja rdi_le               # rsi - rdi > 0
    movq %rsi, %rax         # если rsi меньше
rdi_le:
    ret                     # на выход
        
    xorq  %rax, %rax
    ret
