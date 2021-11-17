# Load game01.txt
.data
filename: .asciiz "game01.txt"
# Garbage values
deck: .word 47261019 91944629
# Garbage values
.data
.align 2
board:
.word card_list91422 card_list279502 card_list944976 card_list397541 card_list348335 card_list54423 card_list353598 card_list735776 card_list1752 
# column #1
.align 2
card_list279502:
.word 806310  # list's size
.word 427024 # address of list's head
# column #7
.align 2
card_list735776:
.word 588212  # list's size
.word 350011 # address of list's head
# column #2
.align 2
card_list944976:
.word 112932  # list's size
.word 879235 # address of list's head
# column #8
.align 2
card_list1752:
.word 257073  # list's size
.word 171733 # address of list's head
# column #0
.align 2
card_list91422:
.word 54908  # list's size
.word 280680 # address of list's head
# column #3
.align 2
card_list397541:
.word 917322  # list's size
.word 40008 # address of list's head
# column #5
.align 2
card_list54423:
.word 357353  # list's size
.word 893478 # address of list's head
# column #6
.align 2
card_list353598:
.word 167419  # list's size
.word 141619 # address of list's head
# column #4
.align 2
card_list348335:
.word 562249  # list's size
.word 589634 # address of list's head
# Garbage values
moves: .ascii "wTffB5aYIyeISOzbuq9EcWJvAwbOOk49AeT3RjxQpVf04OdWHyItj6PX6sX1yxiIvHhOkZLyBdViDQbwC3VVUTQCtBYXbkHu3HGJivGgIUxo5Kvfr7Gpn4uqzc8Gf9mGmW55bmrKofMufvJIi74Z7IiY5EFUzXbqT11K3Fvz6o1G7iNOa5YYMMFvSLhSdx3Dx9Q2AuwnXCvZWm0lyZd1AyGq17l2Jyxe6sh6qG0Mud8ydLytgDKW9TupPCr1CKKwp8SDGK57rv9dlhbBQFUiEIcEIju3x58oM3cDG564MX8sTL5auUyoS4e3qskAwBcMaFRkmcrHkWV7H1mtF34DosHfgCNIJrZmH87eO8zAZYChdKBWPBHwjFim7npcp6nez7baAPuJbc78pU442BSs7lthsQP0unGbVxYjDoAoGQ6BzJmye5F3csiEUU6gihD73wJNbCHwsxny7dgG14WgLQuVfXQn9ylAi4Ei23akYYfvcgjoDB7mQzddjhDSfiQcwC9Z0n0ppYBvQjfRasuQzwYo0ddJeh7pspiJYaY4M5XP342Iq6AJx"


.text
.globl main
main:
la $a0, filename
la $a1, board
la $a2, deck
la $a3, moves
jal load_game

# Write code to check the correctness of your code!
li $v0, 10
syscall

.include "hwk5.asm"