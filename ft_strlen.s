bits 64

global _ft_strlen
section .text
_ft_strlen:
	push rbp
	mov rbp, rsp
	xor rcx, rcx
	jmp looping

looping:	
	cmp byte[rdi], 0
	je quit
	inc rdi
	inc rcx
	jmp looping

quit:
	mov rax, rcx
	leave
	ret
