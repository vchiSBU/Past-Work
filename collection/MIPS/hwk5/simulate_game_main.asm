# Simulate game01.txt - results in a win
.data
filename: .asciiz "game01.txt"
### Deck ###
# Garbage values
deck: .word 24259929 51331435
# Garbage values
.data
.align 2
### Board ###
board:
.word card_list91422 card_list279502 card_list944976 card_list397541 card_list348335 card_list54423 card_list353598 card_list735776 card_list1752 
# column #8
.align 2
card_list1752:
.word 257073  # list's size
.word 171733 # address of list's head
# column #7
.align 2
card_list735776:
.word 588212  # list's size
.word 350011 # address of list's head
# column #5
.align 2
card_list54423:
.word 357353  # list's size
.word 893478 # address of list's head
# column #1
.align 2
card_list279502:
.word 806310  # list's size
.word 427024 # address of list's head
# column #2
.align 2
card_list944976:
.word 112932  # list's size
.word 879235 # address of list's head
# column #4
.align 2
card_list348335:
.word 562249  # list's size
.word 589634 # address of list's head
# column #3
.align 2
card_list397541:
.word 917322  # list's size
.word 40008 # address of list's head
# column #6
.align 2
card_list353598:
.word 167419  # list's size
.word 141619 # address of list's head
# column #0
.align 2
card_list91422:
.word 54908  # list's size
.word 280680 # address of list's head
# Garbage values
moves: .ascii "e6sh6qG0Mud8ydLytgDKW9TupPCr1CKKwp8SDGK57rv9dlhbBQFUiEIcEIju3x58oM3cDG564MX8sTL5auUyoS4e3qskAwBcMaFRkmcrHkWV7H1mtF34DosHfgCNIJrZmH87eO8zAZYChdKBWPBHwjFim7npcp6nez7baAPuJbc78pU442BSs7lthsQP0unGbVxYjDoAoGQ6BzJmye5F3csiEUU6gihD73wJNbCHwsxny7dgG14WgLQuVfXQn9ylAi4Ei23akYYfvcgjoDB7mQzddjhDSfiQcwC9Z0n0ppYBvQjfRasuQzwYo0ddJeh7pspiJYaY4M5XP342Iq6AJxxOi2A4cMswuS1aZwGWaPsfyUlNuC3gUM9VImzORemnUwBXEsP4JIkybqUbW65ORkXmxlgiTMgrh56exd6qxiqAfNqHYJ3hQIh6vsZZO3WQtC9paf1hNg7XC1y0745w8Rl05iyaAnp6aZAiZ2flIrAkX4y0te3bhYKzrKdORITm4ttMJYQvbQjts49mBnFcBe3ZZjkQdJo51eC"

.text
.globl main
main:
la $a0, filename
la $a1, board
la $a2, deck
la $a3, moves
jal simulate_game

# Write code to check the correctness of your code!
li $v0, 10
syscall

.include "hwk5.asm"