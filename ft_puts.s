bits 64

global _ft_puts

section .text
_ft_puts:
	push rbp
	mov rbp, rsp

	leave
	ret
