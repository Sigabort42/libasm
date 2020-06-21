bits 64

global _ft_memset
section .text
_ft_memset:
	push rbp
	mov rbp, rsp
	mov rax, rdi
	cmp rdi, 0
	je quit
	cmp rdx, 0
	je quit
	mov r8, rdi
    	mov al, sil
    	mov rcx, rdx 
    	rep stosb
	mov rax, r8

quit:	
	leave
	ret
