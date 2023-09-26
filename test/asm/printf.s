bits 64

global main
extern printf

section .text
    main:
        push rbx
        MOV rax, 0
        mov rdi, code
        mov rsi, format
        call printf wrt ..plt
        pop rsi
        ret

code:
    code DB "hello, %s", 10, 0xA
    format DB "archi", 0
