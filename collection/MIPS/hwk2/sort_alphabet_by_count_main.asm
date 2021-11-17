.data
sorted_alphabet: .ascii "drfXArg153cyIJvv2dkivJvSpka"
counts: .word 21 17 20 25 21 19 28 26 15 16 21 13 11 16 1 27 24 20 5 23 26 2 29 15 21 8

.text
.globl main
main:
	la $a0, sorted_alphabet
	la $a1, counts
	jal sort_alphabet_by_count
	
	# You must write your own code here to check the correctness of the function implementation.

	la $a0, sorted_alphabet
	li $v0, 4
	syscall
	
	li $v0, 10
	syscall
	
.include "hwk2.asm"
