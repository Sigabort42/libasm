bits 64

global _ft_puts
extern _sleep

%define WRITE 4
%define STDOUT 1

%imacro _write 0x03
	mov rax, 0x2000004
	mov rdi, %1
	mov rsi, %2
	mov rdx, %3
	syscall
%endmacro

section .data
endl:
	.cr db 0x0d
	.nl db 0x0A
	.len_cr equ $ - endl.cr
	.len_nl equ $ - endl.nl

section .text
_ft_puts:
	push rbp
	mov rbp, rsp
	mov rax, 0
	mov rbx, rdi
	cmp rdi, 0
	jle looping


looping:
	_write STDOUT, rbx, 1
	inc rbx
	cmp byte[rbx], 0
	je quit
	jmp looping

quit:
	_write STDOUT, endl.nl, endl.len_nl
	mov rax, 1
	leave
	ret
