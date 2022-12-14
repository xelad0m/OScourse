        .text
        .code64
        .global __switch_threads
        .global __thread_entry
        .global __thread_exit
        .extern thread_entry

    __thread_entry:             // каким-то образом получает адрес входа в поток (функцию)
        movq %r15, %rdi
        movq %r14, %rsi
        movq %r13, %rdx

        cld
        call thread_entry

    __thread_exit:              // получает точку выхода из потока
        movq %rax, %rdi
        callq thread_exit

    __switch_threads:
        pushq %rbx              // регистры (контекст) сохраняется на стек
        pushq %rbp              // только необходмые регистры общего назначения
        pushq %r12
        pushq %r13
        pushq %r14
        pushq %r15
        pushfq                  // флаговый регистр
        
        /* rdi - первый аргумент функции (**prev указатель на указатель) */
        movq %rsp, (%rdi)       // текущий указатель стека процесса (rsp) сохраняется через rdi туда, куда указал **prev
                                // () - разыменование **prev до *prev, копирование в адрес *prev значения регистра rsp

        /* rsi - второй аргумент функции (*next) */
        movq %rsi, %rsp         // указатель стека rsp теперь хранит значение адреса, переданного во втором аргументе
                                // теперь для процессора стек - это область памяти по новому адресу, где должен лежать контекст 
                                // нового процесса

        popfq                   // восстановить регистры (контекст) для процесса, на который переключаемся
        popq %r15
        popq %r14
        popq %r13
        popq %r12
        popq %rbp
        popq %rbx

        retq                    // передаем управление назад (функция retq достает адрес возврата со стека)
                                // теперь уже "нового" стека, потока, на который переключаемся