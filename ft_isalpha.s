bits 64

global _ft_isalpha

section .text
_ft_isalpha:
	push rbp
	mov rbp, rsp
	cmp rdi, 65
	jl quit
	cmp rdi, 90
	jle ok
	cmp rdi, 97
	jl quit
	cmp rdi, 122
	jle ok

ok:
	mov rax, 0
	leave
	ret
quit:
	mov rax, 1
	leave
	ret

