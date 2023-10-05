bits 64

%define GRACE "Grace_kid.s"
%define CODE "bits 64%1$c%1$c%%define GRACE %2$cGrace_kid.s%2$c%1$c%%define CODE %2$c%3$s%2$c%1$c%%macro MAIN 0%1$c%1$cextern fopen%1$cextern fprintf%1$cextern fclose%1$c%1$cglobal main%1$c%1$csection .data%1$c%1$c    grace DB GRACE, 0%1$c    code DB CODE, 0%1$c    mode DB %2$cw%2$c, 0%1$c%1$csection .text%1$c%1$c    main:%1$c        push rbp%1$c%1$c        mov rdi, grace%1$c        mov rsi, mode%1$c        call fopen wrt ..plt%1$c        cmp rax, 0%1$c        je end%1$c%1$c        mov rbx, rax%1$c        mov rdi, rbx%1$c        mov rsi, code%1$c        mov rdx, 10%1$c        mov rcx, 34%1$c        mov r8, code%1$c        call fprintf wrt ..plt%1$c%1$c        mov rdi, rbx%1$c        call fclose wrt ..plt%1$c        pop rbp%1$c        ret%1$c%1$c    end:%1$c        mov rax, 1%1$c        pop rbp%1$c        ret%1$c%1$c%%endmacro%1$c; Grace is done !%1$cMAIN"
%macro MAIN 0

extern fopen
extern fprintf
extern fclose

global main

section .data

    grace DB GRACE, 0
    code DB CODE, 0
    mode DB "w", 0

section .text

    main:
        push rbp

        mov rdi, grace
        mov rsi, mode
        call fopen wrt ..plt
        cmp rax, 0
        je end

        mov rbx, rax
        mov rdi, rbx
        mov rsi, code
        mov rdx, 10
        mov rcx, 34
        mov r8, code
        call fprintf wrt ..plt

        mov rdi, rbx
        call fclose wrt ..plt
        pop rbp
        ret

    end:
        mov rax, 1
        pop rbp
        ret

%endmacro
; Grace is done !
MAIN