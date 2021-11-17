.data
ciphertext: .ascii "drfXArg153cyIJvv2dkivJvSpka5BXf4MyeauUCg5cfQjiY6bs6BKEqE1cXtvHZEn0MO"
plaintext: .ascii "never trust a computer you can't throw out a window. -steve wozniak\0"
keyphrase: .ascii "I'll have you know that I stubbed my toe last week and only cried for 20 minutes.\0"
corpus: .ascii "When in the Course of human events, it becomes necessary for one people to dissolve the political bands which have connected them with another, and to assume among the powers of the earth, the separate and equal station to which the Laws of Nature and of Nature's God entitle them, a decent respect to the opinions of mankind requires that they should declare the causes which impel them to the separation.\0"

.text
.globl main
main:
 	la $a0, ciphertext
	la $a1, plaintext
	la $a2, keyphrase
	la $a3, corpus
	jal encrypt
		
	# You must write your own code here to check the correctness of the function implementation.

	li $v0, 10
	syscall
	
.include "hwk2.asm"