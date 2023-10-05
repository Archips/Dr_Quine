bits 64

extern access
extern sprintf
extern fopen
extern fprintf
extern fclose
extern system

global main

section .data

    i dd 5
    mode db "w", 0
    filename db "Sully_%d.s", 0
    nasm_cmd db "nasm -f elf64 Sully_%d.s -o Sully_%d.o", 0
    link_cmd db "clang -Wall -Wextra -Werror Sully_%d.o -o Sully_%d", 0
    exec_cmd db "./Sully_%d", 0
    sully_5 db "Sully_5.s", 0
    code db "bits 64%1$c%1$cextern access%1$cextern sprintf%1$cextern fopen%1$cextern fprintf%1$cextern fclose%1$cextern system%1$c%1$cglobal main%1$c%1$csection .data%1$c%1$c    i dd %4$d%1$c    mode db %2$cw%2$c, 0%1$c    filename db %2$cSully_%%d.s%2$c, 0%1$c    nasm_cmd db %2$cnasm -f elf64 Sully_%%d.s -o Sully_%%d.o%2$c, 0%1$c    link_cmd db %2$cclang -Wall -Wextra -Werror Sully_%%d.o -o Sully_%%d%2$c, 0%1$c    exec_cmd db %2$c./Sully_%%d%2$c, 0%1$c    sully_5 db %2$cSully_5.s%2$c, 0%1$c    code db %2$c%3$s%2$c, 0%1$c%1$csection .bss%1$c%1$c    name resb 20%1$c    nasm resb 60%1$c    link resb 60%1$c    exec resb 20%1$c%1$csection .text%1$c%1$c    main:%1$c        push rbp%1$c        mov rbp, rsp%1$c        mov rax, [i]%1$c        cmp rax, 0%1$c        jle exit%1$c%1$c        mov rdi, sully_5%1$c        mov rsi, 4%1$c        call access wrt ..plt%1$c        cmp rax, 0%1$c        jne print_name%1$c        mov rax, [i]%1$c        dec rax%1$c        mov [i], rax%1$c%1$c    print_name:%1$c        mov rdi, name%1$c        mov rsi, filename%1$c        mov rdx, [i]%1$c        call sprintf wrt ..plt%1$c%1$c    print_nasm:%1$c        mov rdi, nasm%1$c        mov rsi, nasm_cmd%1$c        mov rdx, [i]%1$c        mov rcx, [i]%1$c        call sprintf wrt ..plt%1$c%1$c    print_link:%1$c        mov rdi, link%1$c        mov rsi, link_cmd%1$c        mov rdx, [i]%1$c        mov rcx, [i]%1$c        call sprintf wrt ..plt%1$c%1$c    print_exec:%1$c        mov rdi, exec%1$c        mov rsi, exec_cmd%1$c        mov rdx, [i]%1$c        call sprintf wrt ..plt%1$c%1$c    open:%1$c        mov rdi, name%1$c        mov rsi, mode%1$c        call fopen wrt ..plt%1$c        cmp rax, 0%1$c        je exit%1$c%1$c    print_code:%1$c        mov rbx, rax%1$c        mov rdi, rbx%1$c        mov rsi, code%1$c        mov rdx, 10%1$c        mov rcx, 34%1$c        mov r8, code%1$c        mov r9, [i]%1$c        call fprintf wrt ..plt%1$c%1$c    close:%1$c        mov rdi, rbx%1$c        call fclose wrt ..plt%1$c%1$c    sys_nasm:%1$c        mov rdi, nasm%1$c        call system wrt ..plt%1$c%1$c    sys_link:%1$c        mov rdi, link%1$c        call system wrt ..plt%1$c%1$c    sys_exec:%1$c        mov rdi, exec%1$c        call system wrt ..plt%1$c%1$c        mov rax, 0%1$c        pop rbp%1$c        ret%1$c%1$c    exit:%1$c        mov rax, 1%1$c        pop rbp%1$c        ret", 0

section .bss

    name resb 20
    nasm resb 60
    link resb 60
    exec resb 20

section .text

    main:
        push rbp
        mov rbp, rsp
        mov rax, [i]
        cmp rax, 0
        jle exit

        mov rdi, sully_5
        mov rsi, 4
        call access wrt ..plt
        cmp rax, 0
        jne print_name
        mov rax, [i]
        dec rax
        mov [i], rax

    print_name:
        mov rdi, name
        mov rsi, filename
        mov rdx, [i]
        call sprintf wrt ..plt

    print_nasm:
        mov rdi, nasm
        mov rsi, nasm_cmd
        mov rdx, [i]
        mov rcx, [i]
        call sprintf wrt ..plt

    print_link:
        mov rdi, link
        mov rsi, link_cmd
        mov rdx, [i]
        mov rcx, [i]
        call sprintf wrt ..plt

    print_exec:
        mov rdi, exec
        mov rsi, exec_cmd
        mov rdx, [i]
        call sprintf wrt ..plt

    open:
        mov rdi, name
        mov rsi, mode
        call fopen wrt ..plt
        cmp rax, 0
        je exit

    print_code:
        mov rbx, rax
        mov rdi, rbx
        mov rsi, code
        mov rdx, 10
        mov rcx, 34
        mov r8, code
        mov r9, [i]
        call fprintf wrt ..plt

    close:
        mov rdi, rbx
        call fclose wrt ..plt

    sys_nasm:
        mov rdi, nasm
        call system wrt ..plt

    sys_link:
        mov rdi, link
        call system wrt ..plt

    sys_exec:
        mov rdi, exec
        call system wrt ..plt

        mov rax, 0
        pop rbp
        ret

    exit:
        mov rax, 1
        pop rbp
        ret