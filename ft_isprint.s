bits 64

global _ft_isprint

section .text
_ft_isprint:
	push rbp
	mov rbp, rsp
	mov rax, 0
	cmp rdi, 32
	jl quit
	cmp rdi, 126
	jg quit
	mov rax, 1

quit:
	leave
	ret	
