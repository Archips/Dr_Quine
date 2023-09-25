bits 64

global _main
extern _printf

section .text
    _main:
        MOV rax, "hello"
        call _printf
        ret
