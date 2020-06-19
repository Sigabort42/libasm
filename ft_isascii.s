bits 64

global _ft_isascii

section .text
_ft_isascii:
	push rbp
	mov rbp, rsp
	cmp rdi, 0
	jl quit
	cmp rdi, 127
	jg quit
	mov rax, 0
	leave
	ret

quit:
	mov rax, 1
	leave
	ret	
