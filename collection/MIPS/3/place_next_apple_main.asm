.data
nl: .asciiz "\n"
apples: .byte 3 2 1 4 4 3
apples_length: .word 3
.align 2
state:
.byte 5  # num_rows
.byte 12  # num_cols
.byte 1  # head_row
.byte 5  # head_col
.byte 7  # length
# Game grid:
.asciiz ".............a.#.1..#......#.2..#......#.3..#........4567..."

.text
.globl main
main:
la $t0, state
move $a0, $t0
li $v0, 4
syscall
la $t0, nl
move $a0, $t0
li $v0, 4
syscall

la $a0, state
la $a1, apples
lw $a2, apples_length
jal place_next_apple

# You must write your own code here to check the correctness of the function implementation.

la $t0, state
move $a0, $t0
li $v0, 4
syscall

li $v0, 10
syscall

.include "hwk3.asm"
