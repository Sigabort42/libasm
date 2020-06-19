bits 64

global _ft_toupper

section .text
_ft_toupper:
	push rbp
	mov rbp, rsp
	cmp rdi, 97
	jl quit
	cmp rdi, 122
	jg quit
	lea rax, rdi - 32
	leave
	ret

quit:
	mov rax, rdi
	leave
	ret
