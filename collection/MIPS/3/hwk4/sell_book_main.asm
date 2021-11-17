.data
isbn: .asciiz "9780670032080"
customer_id: .word 12345
sale_date: .asciiz "2020-09-14"
sale_price: .word 50
books:
.align 2
.word 7 6 68
# Book struct start
.align 2
.ascii "9780345501330\0"
.ascii "Fairy Tail, Vol. 1 (Fair\0"
.ascii "Hiro Mashima, William Fl\0"
.word 3
# empty or deleted entry starts here
.align 2
.byte 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
# Book struct start
.align 2
.ascii "9780060855900\0"
.ascii "Equal Rites (Discworld, \0"
.ascii "Terry Pratchett\0\0\0\0\0\0\0\0\0\0"
.word 103
# Book struct start
.align 2
.ascii "9780670032080\0"
.ascii "Financial Peace Revisite\0"
.ascii "Dave Ramsey\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
.word 61
# Book struct start
.align 2
.ascii "9780064408330\0"
.ascii "Joey Pigza Swallowed the\0"
.ascii "Jack Gantos\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
.word 45
# Book struct start
.align 2
.ascii "9780312577220\0"
.ascii "Fly Away (Firefly Lane, \0"
.ascii "Kristin Hannah\0\0\0\0\0\0\0\0\0\0\0"
.word 814
# Book struct start
.align 2
.ascii "9781416971700\0"
.ascii "Out of My Mind\0\0\0\0\0\0\0\0\0\0\0"
.ascii "Sharon M. Draper\0\0\0\0\0\0\0\0\0"
.word 1

sales:
.align 2
.word 9 9 28
# BookSale struct start
.align 2
.ascii "9780345501330\0"
.byte 0 0
.word 723341
.word 155332
.word 55
# BookSale struct start
.align 2
.ascii "9781416971700\0"
.byte 0 0
.word 2323432
.word 155136
.word 22
# BookSale struct start
.align 2
.ascii "9780060855900\0"
.byte 0 0
.word 920192
.word 158715
.word 61
# BookSale struct start
.align 2
.ascii "9780345501330\0"
.byte 0 0
.word 81321
.word 151369
.word 192
# BookSale struct start
.align 2
.ascii "9780312577220\0"
.byte 0 0
.word 777233
.word 155332
.word 55
# BookSale struct start
.align 2
.ascii "9780312577220\0"
.byte 0 0
.word 2424
.word 152013
.word 125
# BookSale struct start
.align 2
.ascii "9780345501330\0"
.byte 0 0
.word 26234
.word 155332
.word 55
# BookSale struct start
.align 2
.ascii "9780312577220\0"
.byte 0 0
.word 12312
.word 155332
.word 55
# BookSale struct start
.align 2
.ascii "9780064408330\0"
.byte 0 0
.word 73123
.word 155332
.word 55

.text
.globl main
main:
la $a0,  sales
la $a1,  books
la $a2,  isbn
lw $a3,  customer_id
la $t0,  sale_date
lw $t1,  sale_price
addi $sp, $sp, -8
sw $t0, 0($sp)
sw $t1, 4($sp)
li $t0, 929402 # garbage
li $t1, 6322233 # garbage
jal sell_book

# Write code to check the correctness of your code!
li $v0, 10
syscall

.include "hwk4.asm"
