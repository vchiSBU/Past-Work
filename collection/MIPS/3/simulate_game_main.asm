.data
filename: .asciiz "game08.txt"
directions: .asciiz "UULLLDLDDRDRRRRRRUUUURRRRDDDLDLLLLL"
apples: .byte 0 7 3 10 0 9 4 5 0 1 4 10 1 10 0 4 1 3 4 9 0 8 1 9 0 3 4 11 2 0 1 7 3 8 4 1 0 6 4 2 2 4 1 6 4 0 1 2 3 1 2 11 1 0 1 5 2 5 0 10 3 3 1 4 3 9 0 5 0 11 0 2 3 11 1 11 2 2 4 6 2 7 4 8 3 6 4 7 2 10 3 7 2 3 2 8 3 5 2 1 0 0 1 8 4 3 3 0 2 9 3 4 3 2 4 4 1 1 2 6
apples_length: .word 60
num_moves_to_execute: .word 50
.align 2
state: .byte 0x05 0x0c 0x0e 0x45 0x17
.asciiz "XArg153cyIJvv2dkivJvSpka5BXf4MyeauUCg5cfQjiY6bs6BKEqE1cXtvHZ"

.text
.globl main
main:
la $a0, state
la $a1, filename
la $a2, directions
lw $a3, num_moves_to_execute
addi $sp, $sp, -8
la $t0, apples
sw $t0, 0($sp)
lw $t0, apples_length
sw $t0, 4($sp)
li $t0, 123920  # putting garbage in $t0
jal simulate_game
addi $sp, $sp, 8

# You must write your own code here to check the correctness of the function implementation.

li $v0, 10
syscall

.include "hwk3.asm"
