# sales hash table is empty
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



# sales hash table contains some entries; a few steps of linear probing required to insert the BookSale struct
.data
isbn: .asciiz "9780670032080"
customer_id: .word 6123
sale_date: .asciiz "2019-11-04"
sale_price: .word 1032
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


# provided ISBN does not exist in the books hash table
.data
isbn: .asciiz "9780679744400"
customer_id: .word 5123
sale_date: .asciiz "2029-11-04"
sale_price: .word 987
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


# the sales hash table is full
.data
isbn: .asciiz "9781416971700"
customer_id: .word 1523
sale_date: .asciiz "2022-10-14"
sale_price: .word 323
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

