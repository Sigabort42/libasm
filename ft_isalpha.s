bits 64

global _ft_isalpha

section .text
_ft_isalpha:
	push rbp
	mov rbp, rsp
	cmp rdi, 65
	js quit
	cmp rdi, 90
	js ok
	cmp rdi, 97
	js quit
	cmp rdi, 122
	js ok
	jg quit

quit:
	mov rax, 1
	leave
	ret

ok:
	mov rax, 0
	leave
	ret
