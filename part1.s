.section .data

shell_path:
.ascii "/bin/sh\0"

.section .text
.globl _start

_start:
	mov $11, %rax
	mov $shell_path, %rbx
	int $0x80

	mov %rax, %rbx	
	mov $1, %rax
	int $0x80
