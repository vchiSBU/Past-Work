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


# Check for straight in a column that is too short
.data
.align 2
col_num: .word 2
##### Board #####
.data
.align 2
board:
.word card_list405009 card_list777373 card_list700918 card_list471570 card_list776119 card_list701324 card_list449849 card_list29631 card_list340637 
# column #5
.align 2
card_list701324:
.word 5  # list's size
.word node171819 # address of list's head
node171819:
.word 6574899
.word node701247
node543893:
.word 6574902
.word node305340
node305340:
.word 6574898
.word node125375
node701247:
.word 6574905
.word node543893
node125375:
.word 7689008
.word 0
# column #1
.align 2
card_list777373:
.word 5  # list's size
.word node365290 # address of list's head
node958108:
.word 6574903
.word node132614
node921603:
.word 6574903
.word node958108
node132614:
.word 7689009
.word 0
node365290:
.word 6574900
.word node911970
node911970:
.word 6574899
.word node921603
# column #2
.align 2
card_list700918:
.word 5  # list's size
.word node24948 # address of list's head
node24948:
.word 6574897
.word node712038
node658005:
.word 6574903
.word node687795
node560905:
.word 7689016
.word 0
node687795:
.word 6574902
.word node560905
node712038:
.word 6574905
.word node658005
# column #4
.align 2
card_list776119:
.word 5  # list's size
.word node666983 # address of list's head
node794887:
.word 6574901
.word node960311
node960311:
.word 6574897
.word node542223
node542223:
.word 7689014
.word 0
node666983:
.word 6574904
.word node390186
node390186:
.word 6574903
.word node794887
# column #0
.align 2
card_list405009:
.word 5  # list's size
.word node434186 # address of list's head
node153239:
.word 6574897
.word node386388
node864821:
.word 6574896
.word node153239
node752582:
.word 6574898
.word node864821
node434186:
.word 6574902
.word node752582
node386388:
.word 7689016
.word 0
# column #3
.align 2
card_list471570:
.word 5  # list's size
.word node670175 # address of list's head
node59936:
.word 6574905
.word node809975
node809975:
.word 6574904
.word node354130
node150979:
.word 6574896
.word node59936
node354130:
.word 7689017
.word 0
node670175:
.word 6574898
.word node150979
# column #7
.align 2
card_list29631:
.word 5  # list's size
.word node439394 # address of list's head
node174905:
.word 7689013
.word 0
node780261:
.word 6574897
.word node563648
node563648:
.word 6574900
.word node876269
node876269:
.word 6574900
.word node174905
node439394:
.word 6574904
.word node780261
# column #8
.align 2
card_list340637:
.word 4  # list's size
.word node67368 # address of list's head
node408168:
.word 7689017
.word 0
node67368:
.word 6574904
.word node82184
node321036:
.word 6574899
.word node408168
node82184:
.word 6574896
.word node321036
# column #6
.align 2
card_list449849:
.word 5  # list's size
.word node926816 # address of list's head
node406018:
.word 6574904
.word node813835
node926816:
.word 6574900
.word node246378
node660202:
.word 7689014
.word 0
node246378:
.word 6574896
.word node406018
node813835:
.word 6574896
.word node660202


# Column contains a straight, but there are some additional cards below
.data
.align 2
col_num: .word 0
##### Board #####
.data
.align 2
board:
.word card_list405009 card_list777373 card_list700918 card_list471570 card_list776119 card_list701324 card_list449849 card_list29631 card_list340637 
# column #5
.align 2
card_list701324:
.word 0  # list's size
.word 0  # address of list's head (null)
# column #2
.align 2
card_list700918:
.word 0  # list's size
.word 0  # address of list's head (null)
# column #1
.align 2
card_list777373:
.word 0  # list's size
.word 0  # address of list's head (null)
# column #4
.align 2
card_list776119:
.word 0  # list's size
.word 0  # address of list's head (null)
# column #6
.align 2
card_list449849:
.word 0  # list's size
.word 0  # address of list's head (null)
# column #7
.align 2
card_list29631:
.word 0  # list's size
.word 0  # address of list's head (null)
# column #0
.align 2
card_list405009:
.word 13  # list's size
.word node913724 # address of list's head
node235830:
.word 7689008
.word node936833
node109868:
.word 7689010
.word node571954
node913724:
.word 7689017
.word node541949
node144045:
.word 7689013
.word node360261
node761609:
.word 7689008
.word node386926
node541949:
.word 7689016
.word node539723
node583615:
.word 7689014
.word node144045
node539723:
.word 7689015
.word node583615
node360261:
.word 7689012
.word node524417
node571954:
.word 7689009
.word node761609
node524417:
.word 7689011
.word node109868
node386926:
.word 7689010
.word node235830
node936833:
.word 7689014
.word 0
# column #8
.align 2
card_list340637:
.word 0  # list's size
.word 0  # address of list's head (null)
# column #3
.align 2
card_list471570:
.word 0  # list's size
.word 0  # address of list's head (null)


# Column contains a partially face-down straight
.data
.align 2
col_num: .word 4
##### Board #####
.data
.align 2
board:
.word card_list97368 card_list530896 card_list929558 card_list417512 card_list524862 card_list529669 card_list934351 card_list203595 card_list242146 
# column #3
.align 2
card_list417512:
.word 0  # list's size
.word 0  # address of list's head (null)
# column #0
.align 2
card_list97368:
.word 0  # list's size
.word 0  # address of list's head (null)
# column #7
.align 2
card_list203595:
.word 0  # list's size
.word 0  # address of list's head (null)
# column #8
.align 2
card_list242146:
.word 0  # list's size
.word 0  # address of list's head (null)
# column #2
.align 2
card_list929558:
.word 0  # list's size
.word 0  # address of list's head (null)
# column #6
.align 2
card_list934351:
.word 0  # list's size
.word 0  # address of list's head (null)
# column #5
.align 2
card_list529669:
.word 0  # list's size
.word 0  # address of list's head (null)
# column #4
.align 2
card_list524862:
.word 10  # list's size
.word node89234 # address of list's head
node357716:
.word 7689013
.word node581472
node563801:
.word 7689011
.word node139951
node139951:
.word 7689010
.word node974520
node332429:
.word 6574903
.word node87809
node87809:
.word 7689014
.word node357716
node581472:
.word 7689012
.word node563801
node629253:
.word 6574904
.word node332429
node933768:
.word 7689008
.word 0
node89234:
.word 6574905
.word node629253
node974520:
.word 7689009
.word node933768
# column #1
.align 2
card_list530896:
.word 0  # list's size
.word 0  # address of list's head (null)


# Column contains a straight and some additional cards below
.data
.align 2
col_num: .word 0
##### Board #####
.data
.align 2
board:
.word card_list560132 card_list945704 card_list766049 card_list29596 card_list873231 card_list909275 card_list415041 card_list881161 card_list132232 
# column #4
.align 2
card_list873231:
.word 0  # list's size
.word 0  # address of list's head (null)
# column #5
.align 2
card_list909275:
.word 0  # list's size
.word 0  # address of list's head (null)
# column #8
.align 2
card_list132232:
.word 0  # list's size
.word 0  # address of list's head (null)
# column #7
.align 2
card_list881161:
.word 0  # list's size
.word 0  # address of list's head (null)
# column #2
.align 2
card_list766049:
.word 0  # list's size
.word 0  # address of list's head (null)
# column #0
.align 2
card_list560132:
.word 13  # list's size
.word node639371 # address of list's head
node360076:
.word 7689011
.word node729581
node639371:
.word 6574898
.word node665618
node729581:
.word 7689010
.word node613023
node128258:
.word 7689008
.word 0
node518495:
.word 7689012
.word node360076
node832348:
.word 7689016
.word node828927
node665618:
.word 6574896
.word node6251
node630402:
.word 7689014
.word node638749
node941903:
.word 7689017
.word node832348
node638749:
.word 7689013
.word node518495
node6251:
.word 7689014
.word node941903
node828927:
.word 7689015
.word node630402
node613023:
.word 7689009
.word node128258
# column #3
.align 2
card_list29596:
.word 0  # list's size
.word 0  # address of list's head (null)
# column #1
.align 2
card_list945704:
.word 0  # list's size
.word 0  # address of list's head (null)
# column #6
.align 2
card_list415041:
.word 0  # list's size
.word 0  # address of list's head (null)


# Column contains a straight with no additional cards below
.data
.align 2
col_num: .word 4
##### Board #####
.data
.align 2
board:
.word card_list378165 card_list379418 card_list441201 card_list227116 card_list359697 card_list201820 card_list400949 card_list882509 card_list524786 
# column #6
.align 2
card_list400949:
.word 0  # list's size
.word 0  # address of list's head (null)
# column #7
.align 2
card_list882509:
.word 0  # list's size
.word 0  # address of list's head (null)
# column #2
.align 2
card_list441201:
.word 0  # list's size
.word 0  # address of list's head (null)
# column #8
.align 2
card_list524786:
.word 0  # list's size
.word 0  # address of list's head (null)
# column #0
.align 2
card_list378165:
.word 0  # list's size
.word 0  # address of list's head (null)
# column #3
.align 2
card_list227116:
.word 0  # list's size
.word 0  # address of list's head (null)
# column #1
.align 2
card_list379418:
.word 0  # list's size
.word 0  # address of list's head (null)
# column #5
.align 2
card_list201820:
.word 0  # list's size
.word 0  # address of list's head (null)
# column #4
.align 2
card_list359697:
.word 10  # list's size
.word node278376 # address of list's head
node183374:
.word 7689014
.word node897929
node586186:
.word 7689012
.word node394689
node72519:
.word 7689009
.word node966455
node278376:
.word 7689017
.word node869645
node897929:
.word 7689013
.word node586186
node966455:
.word 7689008
.word 0
node394689:
.word 7689011
.word node386419
node386419:
.word 7689010
.word node72519
node869645:
.word 7689016
.word node969333
node969333:
.word 7689015
.word node183374


