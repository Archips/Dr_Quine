;colleen          ; Comment: This is a comment line.
global main      ; Declare _main as a global symbol so it can be linked.
extern printf    ; Declare _printf as an external symbol, indicating it's defined elsewhere.

section .text      ; Start the text section where the code resides.

main:            ; The beginning of the _main function.
  push rbx        ; Push the value of the rbx register onto the stack.
  lea rdi, [rel format] ; Load the address of the format string into rdi.
  lea rsi, [rel format] ; Load the address of the format string into rsi.
  mov rdx, 10      ; Load the value 10 into the rdx register.
  mov rcx, 34      ; Load the value 34 into the rcx register.
  xor rax, rax     ; Set rax to 0 (used for variadic function calling convention).
  call printf wrt ..plt    ; Call the _printf function with the provided arguments.
  pop rsi           ; Restore the value of rsi by popping from the stack.
  ret               ; Return from the _main function.

format:            ; This is a label defining the "format" string.
  db ";colleen%2$cglobal _main%2$cextern _printf%2$c%2$csection .text%2$c%2$c_main:%2$cpush rbx%2$clea rdi, [rel format]%2$clea rsi, [rel format]%2$cmov rdx, 10%2$cmov rcx, 34%2$cxor rax, rax%2$ccall _printf%2$cpop rsi%2$cret ;ret%2$c%2$cformat:%2$cdb %3$c%1$s%3$c, 0", 0
  ; The format string contains a series of placeholders and escape sequences.
  ; The %2$c represents a newline character. %1$s is a placeholder for the whole format string.


