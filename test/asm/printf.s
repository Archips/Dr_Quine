bits 64

global main
extern printf

section .text
    main:
        push rbx
        lea rdi, [rel code]
        lea rsi, [rel code]
        MOV rax, 0
        call printf wrt ..plt
        pop rsi
        ret

code:
    db "hello", 0xA
