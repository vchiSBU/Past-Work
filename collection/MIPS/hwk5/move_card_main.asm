# Move one card successfully
.data
##### Deck #####
.align 2
deck:
.word 36  # list's size
.word node460651 # address of list's head
node727360:
.word 6574899
.word node831195
node198980:
.word 6574899
.word node727360
node935211:
.word 6574900
.word node101008
node350317:
.word 6574905
.word node624722
node272941:
.word 6574898
.word node198980
node624722:
.word 6574897
.word node165860
node190433:
.word 6574896
.word node852662
node376964:
.word 6574901
.word node272941
node831195:
.word 6574900
.word node269782
node591214:
.word 6574902
.word node85242
node597489:
.word 6574898
.word node646107
node916035:
.word 6574898
.word node12091
node165860:
.word 6574905
.word node190433
node942339:
.word 6574899
.word node591214
node495685:
.word 6574899
.word node851930
node460651:
.word 6574905
.word node337535
node337535:
.word 6574896
.word node782946
node661978:
.word 6574905
.word node564113
node12091:
.word 6574897
.word node257497
node257497:
.word 6574896
.word node942339
node852662:
.word 6574896
.word 0
node851930:
.word 6574903
.word node967704
node269782:
.word 6574899
.word node597489
node101008:
.word 6574905
.word node995880
node564113:
.word 6574901
.word node816394
node646107:
.word 6574904
.word node495685
node394153:
.word 6574902
.word node376964
node995880:
.word 6574896
.word node916035
node782946:
.word 6574898
.word node430808
node967704:
.word 6574897
.word node913121
node816394:
.word 6574896
.word node394153
node758365:
.word 6574904
.word node661978
node913121:
.word 6574897
.word node703967
node703967:
.word 6574903
.word node350317
node85242:
.word 6574905
.word node758365
node430808:
.word 6574901
.word node935211
##### Board #####
.data
.align 2
board:
.word card_list176680 card_list466763 card_list888166 card_list961566 card_list748778 card_list424833 card_list177744 card_list164350 card_list546800 
# column #6
.align 2
card_list177744:
.word 5  # list's size
.word node673951 # address of list's head
node673951:
.word 6574902
.word node452398
node353181:
.word 7689016
.word 0
node419135:
.word 6574898
.word node275454
node275454:
.word 6574902
.word node353181
node452398:
.word 6574905
.word node419135
# column #3
.align 2
card_list961566:
.word 5  # list's size
.word node363125 # address of list's head
node363125:
.word 6574900
.word node21272
node21272:
.word 6574902
.word node693508
node631835:
.word 7689012
.word 0
node385664:
.word 6574898
.word node631835
node693508:
.word 6574901
.word node385664
# column #0
.align 2
card_list176680:
.word 5  # list's size
.word node580732 # address of list's head
node580732:
.word 6574904
.word node452585
node484647:
.word 6574900
.word node228499
node452585:
.word 6574900
.word node484647
node228499:
.word 6574897
.word node793360
node793360:
.word 7689013
.word 0
# column #8
.align 2
card_list546800:
.word 4  # list's size
.word node397105 # address of list's head
node890201:
.word 6574904
.word node582876
node582876:
.word 7689017
.word 0
node397105:
.word 6574899
.word node557802
node557802:
.word 6574899
.word node890201
# column #1
.align 2
card_list466763:
.word 5  # list's size
.word node954329 # address of list's head
node632886:
.word 6574896
.word node26465
node813296:
.word 6574897
.word node503395
node26465:
.word 7689013
.word 0
node503395:
.word 6574904
.word node632886
node954329:
.word 6574903
.word node813296
# column #2
.align 2
card_list888166:
.word 5  # list's size
.word node779593 # address of list's head
node842987:
.word 6574900
.word node526942
node153212:
.word 6574898
.word node842987
node779593:
.word 6574904
.word node890887
node890887:
.word 6574900
.word node153212
node526942:
.word 7689014
.word 0
# column #7
.align 2
card_list164350:
.word 5  # list's size
.word node558093 # address of list's head
node691529:
.word 6574898
.word node434365
node434365:
.word 6574903
.word node275605
node275605:
.word 7689015
.word 0
node558093:
.word 6574903
.word node997090
node997090:
.word 6574902
.word node691529
# column #4
.align 2
card_list748778:
.word 5  # list's size
.word node93312 # address of list's head
node789981:
.word 6574899
.word node713935
node337043:
.word 7689008
.word 0
node713935:
.word 6574904
.word node55931
node55931:
.word 6574901
.word node337043
node93312:
.word 6574897
.word node789981
# column #5
.align 2
card_list424833:
.word 5  # list's size
.word node65183 # address of list's head
node259603:
.word 6574897
.word node22789
node22789:
.word 7689013
.word 0
node670722:
.word 6574903
.word node259603
node697509:
.word 6574903
.word node670722
node65183:
.word 6574902
.word node697509
##### Move #####
move: .word 459778


.text
.globl main
main:
la $a0, board
la $a1, deck
lw $a2, move
jal move_card

# Write code to check the correctness of your code!
li $v0, 10
syscall

.include "hwk5.asm"