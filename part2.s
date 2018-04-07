.section .data

.section .text
.globl _start

_start:

	jmp end

hop:

	xor %rax, %rax	
	mov $11, %rax
	pop %rbx
	xor %rcx, %rcx
	xor %rdx, %rdx
	int $0x80
	
	xor %rax, %rax
	xor %rbx, %rbx
	mov $1, %rax
	int $0x80
end:
	call hop
	.ascii "/bin/sh\0"
