.data
num_sales: .word 5
.align 2
sales_list:
# BookSale struct start
.align 2
.ascii "0000000000000\0"
.byte 0 0
.word 12345
.word 153789
.word 2
# BookSale struct start
.align 2
.ascii "1111111111111\0"
.byte 0 0
.word 52321
.word 153789
.word 4
# BookSale struct start
.align 2
.ascii "2222222222222\0"
.byte 0 0
.word 41231
.word 153789
.word 6
# BookSale struct start
.align 2
.ascii "3333333333333\0"
.byte 0 0
.word 12523
.word 153789
.word 2
# BookSale struct start
.align 2
.ascii "4444444444444\0"
.byte 0 0
.word 51231
.word 153789
.word 5

.text
.globl main
main:
la $a0, sales_list
lw $a1, num_sales
jal maximize_revenue

# Write code to check the correctness of your code!
li $v0, 10
syscall

.include "hwk4.asm"
