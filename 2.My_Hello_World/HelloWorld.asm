BITS 64

section .data
    stdout equ 1
    hello db 'Hello, World!', 0
    len_hello equ $ - hello

section .text
    global _start

_start:
    mov	edx,len
    mov	ecx,msg
    mov	ebx,1
    mov	eax,4
    int	0x80
    mov	eax,1
    int	0x80
