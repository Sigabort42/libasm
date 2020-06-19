bits 64

global _ft_isdigit

section .text
_ft_isdigit:
	push rbp
	mov rbp, rsp
	mov rax, 0
	cmp rdi, 48
	jl quit
	cmp rdi, 57
	jge quit
	mov rax, 1

quit:
	leave
	ret	
