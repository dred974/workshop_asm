BITS 64

section .text
    global my_Revstr

my_Revstr:
    test rdi, rdi
    jz end_revstr

    mov rax, rdi

find_length:
    cmp byte [rax], 0
    je end_find_length
    inc rax
    jmp find_length

end_find_length:
    sub rax, rdi

    cmp rax, 1
    jbe end_revstr

    lea rdx, [rdi + rax - 1]

    xor rax, rax
reverse_loop:
    mov al, [rdi]
    mov bl, [rdx]
    mov [rdx], al
    mov [rdi], bl

    inc rdi
    dec rdx

    cmp rdi, rdx
    jae end_revstr

    jmp reverse_loop

end_revstr:
    ret

