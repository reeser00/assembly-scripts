.global _start
.intel_syntax noprefix

.section .bss
buffer:
	.space 128

.section .text

_start:
	// sys_read
	mov rax, 0
	mov rdi, 0
	lea rsi, [buffer]
	mov rdx, 128
	syscall

	// sys_write
	mov rax, 1
	mov rdi, 1
	lea rsi, [buffer]
	mov rdx, 128
	syscall
	
	// sys_exit
	mov rax, 60
	mov rdi, 69
	syscall
