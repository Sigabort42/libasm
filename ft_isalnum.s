bits 64

global _ft_isalnum

section .text
_ft_isalnum:
	push rbp
	mov rbp, rsp
	mov rax, 1
	cmp rdi, 48
	jl quit
	cmp rdi, 57
	jle ok
	cmp rdi, 65
	jl quit
	cmp rdi, 90
	jle ok
	cmp rdi, 97
	jl quit
	cmp rdi, 122
	jle ok

quit:
	mov rax, 0

ok:	
	leave
	ret
