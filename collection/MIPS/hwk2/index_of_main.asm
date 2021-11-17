.data
str: .ascii "CSE 220 COVID-19 Edition\0"
ch: .byte 'V'
start_index: .word 3

.text
.globl main
main:
	la $a0, str
	lbu $a1, ch
	lw $a2, start_index
	jal index_of
	
	# You must write your own code here to check the correctness of the function implementation.

	li $v0, 10
	syscall
	
.include "hwk2.asm"