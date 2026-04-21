; Hello World Program
; Assembler: NASM
; Platform: Linux x86-64

section .data
    msg db "Hello, World!", 0x0a   ; message with newline
    len equ $ - msg                ; length of message

section .text
    global _start

_start:
    ; write syscall
    mov rax, 1          ; sys_write
    mov rdi, 1          ; stdout
    mov rsi, msg        ; message address
    mov rdx, len        ; message length
    syscall

    ; exit syscall
    mov rax, 60         ; sys_exit
    xor rdi, rdi        ; exit code 0
    syscall
