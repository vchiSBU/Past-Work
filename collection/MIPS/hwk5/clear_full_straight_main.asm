# Invalid column number
.data
.align 2
col_num: .word 10
##### Board #####
.data
.align 2
board:
.word card_list384468 card_list299876 card_list144612 card_list478339 card_list990191 card_list57465 card_list499081 card_list29006 card_list323130 
# column #7
.align 2
card_list29006:
.word 5  # list's size
.word node439394 # address of list's head
node563648:
.word 6574900
.word node876269
node439394:
.word 6574904
.word node780261
node174905:
.word 7689013
.word 0
node780261:
.word 6574897
.word node563648
node876269:
.word 6574900
.word node174905
# column #6
.align 2
card_list499081:
.word 5  # list's size
.word node926816 # address of list's head
node406018:
.word 6574904
.word node813835
node660202:
.word 7689014
.word 0
node813835:
.word 6574896
.word node660202
node926816:
.word 6574900
.word node246378
node246378:
.word 6574896
.word node406018
# column #2
.align 2
card_list144612:
.word 5  # list's size
.word node24948 # address of list's head
node687795:
.word 6574902
.word node560905
node560905:
.word 7689016
.word 0
node712038:
.word 6574905
.word node658005
node24948:
.word 6574897
.word node712038
node658005:
.word 6574903
.word node687795
# column #3
.align 2
card_list478339:
.word 5  # list's size
.word node670175 # address of list's head
node670175:
.word 6574898
.word node150979
node59936:
.word 6574905
.word node809975
node354130:
.word 7689017
.word 0
node809975:
.word 6574904
.word node354130
node150979:
.word 6574896
.word node59936
# column #0
.align 2
card_list384468:
.word 5  # list's size
.word node434186 # address of list's head
node153239:
.word 6574897
.word node386388
node386388:
.word 7689016
.word 0
node752582:
.word 6574898
.word node864821
node434186:
.word 6574902
.word node752582
node864821:
.word 6574896
.word node153239
# column #4
.align 2
card_list990191:
.word 5  # list's size
.word node666983 # address of list's head
node960311:
.word 6574897
.word node542223
node390186:
.word 6574903
.word node794887
node666983:
.word 6574904
.word node390186
node794887:
.word 6574901
.word node960311
node542223:
.word 7689014
.word 0
# column #1
.align 2
card_list299876:
.word 5  # list's size
.word node365290 # address of list's head
node921603:
.word 6574903
.word node958108
node911970:
.word 6574899
.word node921603
node132614:
.word 7689009
.word 0
node958108:
.word 6574903
.word node132614
node365290:
.word 6574900
.word node911970
# column #8
.align 2
card_list323130:
.word 4  # list's size
.word node67368 # address of list's head
node82184:
.word 6574896
.word node321036
node67368:
.word 6574904
.word node82184
node321036:
.word 6574899
.word node408168
node408168:
.word 7689017
.word 0
# column #5
.align 2
card_list57465:
.word 5  # list's size
.word node171819 # address of list's head
node305340:
.word 6574898
.word node125375
node171819:
.word 6574899
.word node701247
node701247:
.word 6574905
.word node543893
node543893:
.word 6574902
.word node305340
node125375:
.word 7689008
.word 0


.text
.globl main
main:
la $a0, board
lw $a1, col_num
jal clear_full_straight

# Write code to check the correctness of your code!
li $v0, 10
syscall

.include "hwk5.asm"