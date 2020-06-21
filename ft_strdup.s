bits 64

global _ft_strdup
extern _malloc
extern _ft_strlen

section .text
_ft_strdup:
	push rbp
	mov rbp, rsp
	mov rax, 0
	cmp rdi, 0
	je quit
	mov rbx, rdi
	call _ft_strlen
	add rax, 1
	mov rdi, rax
	push rdi
	call _malloc
	pop rdi
	cmp rax, 0
	je quit
	mov rcx, rdi
	mov rdi, rax
	mov rsi, rbx
	rep movsb

quit:
	leave
	ret
