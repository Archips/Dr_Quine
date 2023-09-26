bits 64

; Comment out

global main
extern printf

code:
    code DB "bits 64%2$c%2$c; Comment out%2$c%2$cglobal main%2$cextern printf%2$c%2$ccode:%2$c    code DB %3$c%1$s%3$c, 0%2$c%2$csection .text%2$c    quine:%2$c        push rbx%2$c        mov rax, 0%2$c        mov rdi, code%2$c        mov rsi, code%2$c        mov rdx, 10%2$c        mov rcx, 34%2$c        call printf wrt ..plt%2$c        pop rsi%2$c        ret%2$c    main:%2$c        jmp quine%2$c        ret%2$c", 0

section .text
    quine:
        push rbx
        mov rax, 0
        mov rdi, code
        mov rsi, code
        mov rdx, 10
        mov rcx, 34
        call printf wrt ..plt
        pop rsi
        ret
    main:
        jmp quine
        ret
