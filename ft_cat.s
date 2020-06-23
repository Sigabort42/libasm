bits 64 

%define SYS_READ 0x2000003
%define SYS_WRITE 0x2000004
%define STDOUT 1
%define LEN 4096

global _ft_cat

%imacro _read 0x03
	mov rax, SYS_READ
	mov rdi, %1
	mov rsi, %2
	mov rdx, %3
	syscall
%endmacro

%imacro _write 0x03
	mov rax, SYS_WRITE
	mov rdi, %1
	mov rsi, %2
	mov rdx, %3
	syscall
%endmacro

section .bss
buf resb LEN

section .text
_ft_cat:
	push rbp
	mov rbp, rsp
	mov rax, 0
	cmp rdi, 0
	jl quit
	mov r9, rdi
	jmp looping

looping:
	_read r9, buf, LEN - 1
	cmp rax, 0
	jle quit
	mov r8, rax
	_write STDOUT, buf, r8	
	jmp looping

quit:
	leave
	ret


