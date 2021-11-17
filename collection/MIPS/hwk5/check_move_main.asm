
# Attempted deal-move with an empty deck
.data
.align 2
move: .word 16777216
##### Deck #####
.align 2
deck:
.word 0  # list's size
.word 0  # address of list's head (null)
##### Board #####
.data
.align 2
board:
.word card_list78915 card_list688577 card_list231351 card_list238730 card_list365927 card_list361474 card_list397379 card_list926440 card_list498583 
# column #0
.align 2
card_list78915:
.word 5  # list's size
.word node343243 # address of list's head
node414155:
.word 6574897
.word node4330
node343243:
.word 6574900
.word node801411
node801411:
.word 6574901
.word node118446
node4330:
.word 7689010
.word 0
node118446:
.word 6574903
.word node414155
# column #6
.align 2
card_list397379:
.word 5  # list's size
.word node586146 # address of list's head
node578498:
.word 6574902
.word node759406
node586146:
.word 6574896
.word node578498
node675400:
.word 7689010
.word 0
node660134:
.word 7689011
.word node675400
node759406:
.word 6574896
.word node660134
# column #7
.align 2
card_list926440:
.word 5  # list's size
.word node123449 # address of list's head
node203138:
.word 6574903
.word node575879
node123449:
.word 6574898
.word node254892
node437746:
.word 7689016
.word 0
node575879:
.word 6574897
.word node437746
node254892:
.word 6574901
.word node203138
# column #8
.align 2
card_list498583:
.word 4  # list's size
.word node231351 # address of list's head
node361474:
.word 6574904
.word node498583
node231351:
.word 6574901
.word node361474
node841365:
.word 7689016
.word 0
node498583:
.word 6574898
.word node841365
# column #2
.align 2
card_list231351:
.word 5  # list's size
.word node78915 # address of list's head
node397379:
.word 6574902
.word node676440
node78915:
.word 6574896
.word node238730
node676440:
.word 6574905
.word node115767
node238730:
.word 6574899
.word node397379
node115767:
.word 7689017
.word 0
# column #4
.align 2
card_list365927:
.word 5  # list's size
.word node888233 # address of list's head
node888233:
.word 6574899
.word node28766
node28766:
.word 6574903
.word node204701
node530884:
.word 6574901
.word node244854
node204701:
.word 6574897
.word node530884
node244854:
.word 7689017
.word 0
# column #3
.align 2
card_list238730:
.word 5  # list's size
.word node889531 # address of list's head
node889531:
.word 6574902
.word node262656
node307169:
.word 6574903
.word node172449
node495619:
.word 6574901
.word node307169
node262656:
.word 6574899
.word node495619
node172449:
.word 7689012
.word 0
# column #1
.align 2
card_list688577:
.word 5  # list's size
.word node900563 # address of list's head
node364590:
.word 6574898
.word node854559
node803929:
.word 6574897
.word node364590
node900563:
.word 6574902
.word node987175
node854559:
.word 7689015
.word 0
node987175:
.word 6574900
.word node803929
# column #5
.align 2
card_list361474:
.word 5  # list's size
.word node688577 # address of list's head
node365927:
.word 6574896
.word node926440
node926440:
.word 6574903
.word node796802
node255386:
.word 7689010
.word 0
node796802:
.word 6574902
.word node255386
node688577:
.word 6574897
.word node365927


.text
.globl main
main:
la $a0, board
la $a1, deck
lw $a2, move
jal check_move

# Write code to check the correctness of your code!
li $v0, 10
syscall

.include "hwk5.asm"