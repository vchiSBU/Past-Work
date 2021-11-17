# Deal out a deck of shuffled cards
.data
##### Deck #####
.align 2
deck:
.word 80  # list's size
.word node406487 # address of list's head
node816567:
.word 6574897
.word node352433
node352433:
.word 6574898
.word node17101
node244710:
.word 6574903
.word node570604
node647585:
.word 6574901
.word node65651
node557840:
.word 6574897
.word node525345
node198246:
.word 6574899
.word node614678
node741399:
.word 6574904
.word node93102
node660594:
.word 6574899
.word node755285
node658839:
.word 6574898
.word node381174
node727928:
.word 6574901
.word node665944
node466092:
.word 6574900
.word node396981
node939681:
.word 6574896
.word node369009
node535110:
.word 6574902
.word node372309
node369149:
.word 6574897
.word node718240
node665079:
.word 6574901
.word node440777
node46274:
.word 6574904
.word node10646
node562436:
.word 6574896
.word node466092
node30553:
.word 6574899
.word node338122
node507314:
.word 6574904
.word node186217
node570604:
.word 6574902
.word node507314
node483704:
.word 6574897
.word node46274
node34636:
.word 6574899
.word node787287
node268816:
.word 6574903
.word node837696
node301678:
.word 6574902
.word node518814
node372309:
.word 6574898
.word node741399
node338122:
.word 6574900
.word node275294
node455364:
.word 6574902
.word node665079
node834389:
.word 6574905
.word node561829
node285140:
.word 6574900
.word node455364
node369009:
.word 6574903
.word node240260
node10646:
.word 6574905
.word node141273
node573134:
.word 6574900
.word node727928
node755285:
.word 6574897
.word node244710
node665944:
.word 6574901
.word node423843
node406487:
.word 6574902
.word node601011
node113898:
.word 6574897
.word node647585
node275294:
.word 6574903
.word node495464
node440777:
.word 6574897
.word node373
node13453:
.word 6574905
.word node939681
node423843:
.word 6574903
.word node30553
node62628:
.word 6574905
.word node669832
node17101:
.word 6574904
.word node198246
node601011:
.word 6574900
.word node816567
node614678:
.word 6574900
.word node92440
node86933:
.word 6574899
.word node454244
node77054:
.word 6574899
.word node573134
node788163:
.word 6574904
.word node483704
node161231:
.word 6574898
.word node562436
node425428:
.word 6574896
.word node557840
node495464:
.word 6574900
.word node34636
node92440:
.word 6574904
.word node872000
node758817:
.word 6574896
.word node864122
node872000:
.word 6574904
.word node658839
node202561:
.word 6574902
.word node22030
node525345:
.word 6574896
.word node758817
node787287:
.word 6574898
.word node588868
node941076:
.word 6574901
.word node8978
node65651:
.word 6574898
.word node535110
node561829:
.word 6574896
.word node395795
node454244:
.word 6574902
.word node941076
node396981:
.word 6574905
.word node788163
node669832:
.word 6574901
.word node301678
node381174:
.word 6574899
.word node13453
node718240:
.word 6574905
.word node285140
node351096:
.word 6574898
.word 0
node478508:
.word 6574896
.word node202561
node518814:
.word 6574904
.word node801309
node864122:
.word 6574903
.word node953317
node837696:
.word 6574905
.word node369149
node186217:
.word 6574897
.word node161231
node141273:
.word 6574902
.word node478508
node93102:
.word 6574896
.word node86933
node395795:
.word 6574901
.word node77054
node953317:
.word 6574903
.word node62628
node801309:
.word 6574900
.word node660594
node8978:
.word 6574899
.word node834389
node240260:
.word 6574905
.word node425428
node22030:
.word 6574901
.word node268816
node588868:
.word 6574898
.word node351096
node373:
.word 6574903
.word node113898
##### Board #####
.data
.align 2
board:
.word card_list702266 card_list398332 card_list834324 card_list122769 card_list130757 card_list268251 card_list773371 card_list278845 card_list116
# column #3
.align 2
card_list122769:
.word 0  # list's size
.word 0  # address of list's head (null)
# column #2
.align 2
card_list834324:
.word 0  # list's size
.word 0  # address of list's head (null)
# column #6
.align 2
card_list773371:
.word 0  # list's size
.word 0  # address of list's head (null)
# column #1
.align 2
card_list398332:
.word 0  # list's size
.word 0  # address of list's head (null)
# column #7
.align 2
card_list278845:
.word 0  # list's size
.word 0  # address of list's head (null)
# column #8
.align 2
card_list116:
.word 0  # list's size
.word 0  # address of list's head (null)
# column #5
.align 2
card_list268251:
.word 0  # list's size
.word 0  # address of list's head (null)
# column #4
.align 2
card_list130757:
.word 0  # list's size
.word 0  # address of list's head (null)
# column #0
.align 2
card_list702266:
.word 0  # list's size
.word 0  # address of list's head (null)


.text
.globl main
main:
la $a0, board
la $a1, deck
jal deal_starting_cards

# Write code to check the correctness of your code!
li $v0, 10
syscall

.include "hwk5.asm"