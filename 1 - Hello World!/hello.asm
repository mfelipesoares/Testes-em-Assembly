section .data
    mensagem db "Hello, World!", 10
    tamMsg equ $-mensagem
section .text
    global _start

_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, mensagem
    mov rdx, tamMsg
    syscall 

    mov rax, 60
    mov rdi, 0
    syscall