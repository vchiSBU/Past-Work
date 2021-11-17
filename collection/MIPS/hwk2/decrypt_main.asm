.data
plaintext: .ascii "2WPlU0f6FQqkvvJz4eUDyKXvbmLf1Oxa5wozIGU06dOsF9WOUoIEljICyWDcaiDmbqZw"
ciphertext: .ascii "Dk5wQ 1Q4RW h yLCO4XnQ 8H4 yaE'3 VpQH6 L4V a 6qGoJ6. -R3n5t 6J9GqIA\0"
keyphrase: .ascii "I'll have you know that I stubbed my toe last week and only cried for 20 minutes.\0"
corpus: .ascii "When in the Course of human events, it becomes necessary for one people to dissolve the political bands which have connected them with another, and to assume among the powers of the earth, the separate and equal station to which the Laws of Nature and of Nature's God entitle them, a decent respect to the opinions of mankind requires that they should declare the causes which impel them to the separation.\0"

.text
.globl main
main:
 	la $a0, plaintext
	la $a1, ciphertext
	la $a2, keyphrase
	la $a3, corpus
	jal decrypt
	
	# You must write your own code here to check the correctness of the function implementation.

	li $v0, 10
	syscall
	
.include "hwk2.asm"
