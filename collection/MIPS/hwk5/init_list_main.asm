.data
card_list: .word 16832383 14472030  # garbage

.text
.globl main
main:
la $a0, card_list
jal init_list


# Write code to check the correctness of your code!
li $v0, 10
syscall

.include "hwk5.asm"
