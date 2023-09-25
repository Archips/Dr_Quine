global _start

section .text

_start: 
    MOV rax, 1
    MOV rdi, 1
    MOV rsi, msg
    MOV rdx, msglength
    SYSCALL

    MOV rax, 1
    MOV rdi, 1
    MOV rsi, code
    MOV rdx, codelength
    SYSCALL

    MOV rax, 0x3C
    MOV rdi, 0x0
    SYSCALL

section .data
    msg: DB "Hello World", 0xA
    code: DB "global _start%2%2section .text%2", 0xA
    codelength: EQU $ - code
    msglength: EQU $ - msg
