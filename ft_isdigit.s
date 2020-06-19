bits 64

global _ft_isdigit

section .text
_ft_isdigit:
	push rbp
	mov rbp, rsp
	cmp rdi, 48
	jl quit
	cmp rdi, 57
	jg quit
	mov rax, 0
	leave
	ret

quit:
	mov rax, 1
	leave
	ret	
