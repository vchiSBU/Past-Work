.data
str: .ascii "Stony Brook University\0"

.text
.globl main
main:
	la $a0, str
	jal to_lowercase

	# You must write your own code here to check the correctness of the function implementation.

	li $v0, 10
	syscall
	
.include "hwk2.asm"	