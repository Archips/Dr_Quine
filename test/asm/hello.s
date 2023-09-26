bits 64

extern printf
global main

section .data
    msg DD "Hello World!", 0
    fmt DB "Output is: %s", 10, 0

section .text
    main:
        PUSH msg
        PUSH fmt
        CALL printf wrt ..plt
        ret
