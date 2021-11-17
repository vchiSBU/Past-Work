.text
.globl main
main:
jal create_deck

# Write code to check the correctness of your code!
li $v0, 10
syscall

.include "hwk5.asm"