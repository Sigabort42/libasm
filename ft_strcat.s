bits 64

global _ft_strcat
section .text
_ft_strcat:
	push rbp
	mov rbp, rsp
	mov rax, rdi
	cmp rdi, 0
	je quit
	cmp rsi, 0
	je quit

count_i:
	cmp byte[rdi], 0
	je looping
	inc rdi
	jmp count_i

looping:
	cmp byte[rsi], 0
	je quit
	mov bl, [rsi]
	mov byte[rdi], bl
	inc rsi
	inc rdi
	jmp looping
	
quit:
	mov byte[rdi], 0
	leave
	ret
