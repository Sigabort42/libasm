bits 64

global _ft_bzero

section .text
_ft_bzero:
	push rbp
	mov rbp, rsp
	xor rbx, rbx
	cmp rdi, 0
	jle quit
	jmp looping

looping:
	cmp rsi, rbx
	jle quit
	mov byte[rdi + rbx], 0
	inc rbx
	jmp looping

quit:
	leave
	ret
