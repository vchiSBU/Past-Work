# Deal-move for a starting configuration of cards
.data
##### Deck #####
.align 2
deck:
.word 36  # list's size
.word node529834 # address of list's head
node559746:
.word 6574896
.word node599025
node94301:
.word 6574905
.word node62683
node529834:
.word 6574898
.word node705717
node276496:
.word 6574900
.word node635747
node820118:
.word 6574901
.word node496634
node342161:
.word 6574897
.word node94301
node105699:
.word 6574903
.word node105397
node520590:
.word 6574896
.word node252371
node239421:
.word 6574901
.word node237103
node438084:
.word 6574896
.word node634208
node634208:
.word 6574902
.word node520590
node635747:
.word 6574896
.word node301080
node266677:
.word 6574896
.word node726422
node103194:
.word 6574902
.word node517480
node496634:
.word 6574900
.word node951223
node23036:
.word 6574899
.word node219800
node219800:
.word 6574900
.word node820118
node105397:
.word 6574896
.word node239421
node599025:
.word 6574897
.word node856200
node250860:
.word 6574904
.word node103194
node62683:
.word 6574905
.word 0
node195800:
.word 6574898
.word node139036
node517480:
.word 6574903
.word node559746
node301080:
.word 6574897
.word node342161
node821217:
.word 6574897
.word node273726
node243533:
.word 6574899
.word node23036
node705717:
.word 6574899
.word node735046
node726422:
.word 6574903
.word node821217
node273726:
.word 6574899
.word node461941
node856200:
.word 6574899
.word node195800
node951223:
.word 6574901
.word node276496
node237103:
.word 6574902
.word node250860
node139036:
.word 6574904
.word node438084
node252371:
.word 6574902
.word node266677
node461941:
.word 6574905
.word node243533
node735046:
.word 6574904
.word node105699
##### Board #####
.data
.align 2
board:
.word card_list870035 card_list944645 card_list398927 card_list954759 card_list598130 card_list187325 card_list824923 card_list639029 card_list128816 
# column #4
.align 2
card_list598130:
.word 5  # list's size
.word node887065 # address of list's head
node327906:
.word 6574903
.word node102107
node501507:
.word 6574904
.word node327906
node887065:
.word 6574900
.word node28336
node102107:
.word 7689011
.word 0
node28336:
.word 6574898
.word node501507
# column #2
.align 2
card_list398927:
.word 5  # list's size
.word node35339 # address of list's head
node695060:
.word 6574896
.word node286730
node619337:
.word 7689015
.word 0
node35339:
.word 6574899
.word node695060
node981865:
.word 6574904
.word node619337
node286730:
.word 6574899
.word node981865
# column #5
.align 2
card_list187325:
.word 5  # list's size
.word node471440 # address of list's head
node763035:
.word 6574905
.word node961929
node904121:
.word 6574897
.word node763035
node766882:
.word 6574901
.word node904121
node471440:
.word 6574904
.word node766882
node961929:
.word 7689009
.word 0
# column #8
.align 2
card_list128816:
.word 4  # list's size
.word node363810 # address of list's head
node693700:
.word 7689010
.word 0
node418984:
.word 6574904
.word node307476
node363810:
.word 6574902
.word node418984
node307476:
.word 6574900
.word node693700
# column #0
.align 2
card_list870035:
.word 5  # list's size
.word node637305 # address of list's head
node150580:
.word 7689015
.word 0
node637305:
.word 6574902
.word node8463
node83204:
.word 6574898
.word node78540
node78540:
.word 6574901
.word node150580
node8463:
.word 6574905
.word node83204
# column #7
.align 2
card_list639029:
.word 5  # list's size
.word node30842 # address of list's head
node728401:
.word 6574900
.word node57538
node30842:
.word 6574898
.word node728401
node323003:
.word 6574904
.word node905662
node905662:
.word 7689014
.word 0
node57538:
.word 6574896
.word node323003
# column #3
.align 2
card_list954759:
.word 5  # list's size
.word node59453 # address of list's head
node276993:
.word 6574901
.word node621534
node621534:
.word 7689010
.word 0
node914942:
.word 6574905
.word node783339
node59453:
.word 6574901
.word node914942
node783339:
.word 6574897
.word node276993
# column #6
.align 2
card_list824923:
.word 5  # list's size
.word node323467 # address of list's head
node790724:
.word 7689014
.word 0
node413020:
.word 6574900
.word node790724
node137683:
.word 6574905
.word node413020
node323467:
.word 6574900
.word node968889
node968889:
.word 6574898
.word node137683
# column #1
.align 2
card_list944645:
.word 5  # list's size
.word node556215 # address of list's head
node595815:
.word 7689015
.word 0
node147971:
.word 6574897
.word node593516
node55660:
.word 6574901
.word node595815
node556215:
.word 6574903
.word node147971
node593516:
.word 6574905
.word node55660


.text
.globl main
main:
la $a0, board
la $a1, deck
jal deal_move

# Write code to check the correctness of your code!
li $v0, 10
syscall

.include "hwk5.asm"