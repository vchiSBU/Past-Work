.data
direction: .byte 'U'
nl: .asciiz "\n"
tail_row: .byte 4
tail_col: .byte 9
.align 2
state:
.byte 5  # num_rows
.byte 12  # num_cols
.byte 1  # head_row
.byte 5  # head_col
.byte 7  # length
# Game grid:
.asciiz ".............a.#.1..#......#.2..#......#.3..#........45678.."

.text
.globl main
main:
la $t0, state
addi $t0, $t0, 5
move $a0, $t0
li $v0, 4
syscall
la $a0, nl
li $v0, 4
syscall

la $a0, state
lbu $a1, direction
lb $a2, tail_row
lb $a3, tail_col
jal add_tail_segment

la $t0, state
addi $t0, $t0, 5
move $a0, $t0
li $v0, 4
syscall


# You must write your own code here to check the correctness of the function implementation.

li $v0, 10
syscall

.include "hwk3.asm"
