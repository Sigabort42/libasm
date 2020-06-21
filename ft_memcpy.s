bits 64

global _ft_memcpy

section .text
_ft_memcpy:
	push rbp
	mov rbp, rsp
	mov rax, rdi
	cmp rdi, 0
	je quit
	cmp rsi, 0
	je quit
	cmp rdx, 0
	je quit
	mov rcx, rdx
	rep movsb

quit:
	leave
	ret
