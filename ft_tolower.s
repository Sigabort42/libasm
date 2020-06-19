bits 64

global _ft_tolower

section .text
_ft_tolower:
	push rbp
	mov rbp, rsp
	cmp rdi, 65
	jl quit
	cmp rdi, 90
	jg quit
	lea rax, [rdi + 32]
	leave
	ret

quit:
	mov rax, rdi
	leave
	ret
