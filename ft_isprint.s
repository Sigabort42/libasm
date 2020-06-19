bits 64

global _ft_isprint

section .text
_ft_isprint:
	push rbp
	mov rbp, rsp
	cmp rdi, 32
	jl quit
	cmp rdi, 126
	jg quit
	mov rax, 0
	leave
	ret

quit:
	mov rax, 1
	leave
	ret	
