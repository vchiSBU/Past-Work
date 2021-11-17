# Deal-move
.data
.align 2
move: .word 16777216
##### Deck #####
.align 2
deck:
.word 36  # list's size
.word node565654 # address of list's head
node810708:
.word 6574902
.word node55539
node462734:
.word 6574900
.word node392533
node491599:
.word 6574904
.word node568725
node55539:
.word 6574905
.word node462734
node389676:
.word 6574898
.word node660985
node565654:
.word 6574905
.word node885638
node30258:
.word 6574899
.word node960696
node645758:
.word 6574896
.word node930604
node889889:
.word 6574904
.word node30258
node146751:
.word 6574896
.word node889889
node542423:
.word 6574903
.word node519054
node470166:
.word 6574896
.word node425271
node12639:
.word 6574905
.word node104256
node270436:
.word 6574900
.word node842468
node709262:
.word 6574899
.word node686132
node686132:
.word 6574904
.word node877253
node119970:
.word 6574897
.word 0
node912265:
.word 6574898
.word node12639
node569612:
.word 6574897
.word node912265
node573053:
.word 6574904
.word node709262
node392533:
.word 6574899
.word node645758
node104256:
.word 6574900
.word node654794
node660985:
.word 6574902
.word node84011
node568725:
.word 6574902
.word node542423
node425271:
.word 6574900
.word node119970
node885638:
.word 6574905
.word node327956
node960696:
.word 6574903
.word node491599
node84011:
.word 6574901
.word node270436
node877253:
.word 6574897
.word node146751
node216239:
.word 6574904
.word node470166
node654794:
.word 6574901
.word node991130
node991130:
.word 6574899
.word node389676
node327956:
.word 6574900
.word node573053
node519054:
.word 6574905
.word node569612
node930604:
.word 6574901
.word node216239
node842468:
.word 6574896
.word node810708
##### Board #####
.data
.align 2
board:
.word card_list605458 card_list808294 card_list811453 card_list688182 card_list750883 card_list508088 card_list269320 card_list565602 card_list321939 
# column #2
.align 2
card_list811453:
.word 5  # list's size
.word node78915 # address of list's head
node238730:
.word 6574899
.word node397379
node78915:
.word 6574896
.word node238730
node115767:
.word 7689017
.word 0
node397379:
.word 6574902
.word node676440
node676440:
.word 6574905
.word node115767
# column #7
.align 2
card_list565602:
.word 5  # list's size
.word node123449 # address of list's head
node254892:
.word 6574901
.word node203138
node437746:
.word 7689016
.word 0
node575879:
.word 6574897
.word node437746
node123449:
.word 6574898
.word node254892
node203138:
.word 6574903
.word node575879
# column #1
.align 2
card_list808294:
.word 5  # list's size
.word node900563 # address of list's head
node854559:
.word 7689015
.word 0
node803929:
.word 6574897
.word node364590
node900563:
.word 6574902
.word node987175
node364590:
.word 6574898
.word node854559
node987175:
.word 6574900
.word node803929
# column #3
.align 2
card_list688182:
.word 5  # list's size
.word node889531 # address of list's head
node889531:
.word 6574902
.word node262656
node172449:
.word 7689012
.word 0
node495619:
.word 6574901
.word node307169
node262656:
.word 6574899
.word node495619
node307169:
.word 6574903
.word node172449
# column #6
.align 2
card_list269320:
.word 5  # list's size
.word node586146 # address of list's head
node578498:
.word 6574902
.word node759406
node660134:
.word 6574899
.word node675400
node586146:
.word 6574896
.word node578498
node675400:
.word 7689010
.word 0
node759406:
.word 6574896
.word node660134
# column #8
.align 2
card_list321939:
.word 4  # list's size
.word node231351 # address of list's head
node498583:
.word 6574898
.word node841365
node841365:
.word 7689016
.word 0
node361474:
.word 6574904
.word node498583
node231351:
.word 6574901
.word node361474
# column #0
.align 2
card_list605458:
.word 5  # list's size
.word node343243 # address of list's head
node4330:
.word 7689010
.word 0
node118446:
.word 6574903
.word node414155
node414155:
.word 6574897
.word node4330
node343243:
.word 6574900
.word node801411
node801411:
.word 6574901
.word node118446
# column #4
.align 2
card_list750883:
.word 5  # list's size
.word node888233 # address of list's head
node888233:
.word 6574899
.word node28766
node28766:
.word 6574903
.word node204701
node204701:
.word 6574897
.word node530884
node530884:
.word 6574901
.word node244854
node244854:
.word 7689017
.word 0
# column #5
.align 2
card_list508088:
.word 5  # list's size
.word node688577 # address of list's head
node365927:
.word 6574896
.word node926440
node926440:
.word 6574903
.word node796802
node796802:
.word 6574902
.word node255386
node688577:
.word 6574897
.word node365927
node255386:
.word 7689010
.word 0





# Invalid move encoded
.data
.align 2
move: .word 100860162
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
# column #6
.align 2
card_list397379:
.word 5  # list's size
.word node586146 # address of list's head
node660134:
.word 7689011
.word node675400
node759406:
.word 6574896
.word node660134
node578498:
.word 6574902
.word node759406
node675400:
.word 7689010
.word 0
node586146:
.word 6574896
.word node578498
# column #1
.align 2
card_list688577:
.word 5  # list's size
.word node900563 # address of list's head
node364590:
.word 6574898
.word node854559
node900563:
.word 6574902
.word node987175
node854559:
.word 7689015
.word 0
node987175:
.word 6574900
.word node803929
node803929:
.word 6574897
.word node364590
# column #7
.align 2
card_list926440:
.word 5  # list's size
.word node123449 # address of list's head
node254892:
.word 6574901
.word node203138
node203138:
.word 6574903
.word node575879
node575879:
.word 6574897
.word node437746
node123449:
.word 6574898
.word node254892
node437746:
.word 7689016
.word 0
# column #8
.align 2
card_list498583:
.word 4  # list's size
.word node231351 # address of list's head
node498583:
.word 6574898
.word node841365
node841365:
.word 7689016
.word 0
node361474:
.word 6574904
.word node498583
node231351:
.word 6574901
.word node361474
# column #3
.align 2
card_list238730:
.word 5  # list's size
.word node889531 # address of list's head
node262656:
.word 6574899
.word node495619
node172449:
.word 7689012
.word 0
node307169:
.word 6574903
.word node172449
node495619:
.word 6574901
.word node307169
node889531:
.word 6574902
.word node262656
# column #2
.align 2
card_list231351:
.word 5  # list's size
.word node78915 # address of list's head
node397379:
.word 6574902
.word node676440
node238730:
.word 6574899
.word node397379
node78915:
.word 6574896
.word node238730
node676440:
.word 6574905
.word node115767
node115767:
.word 7689017
.word 0
# column #5
.align 2
card_list361474:
.word 5  # list's size
.word node688577 # address of list's head
node926440:
.word 6574903
.word node796802
node688577:
.word 6574897
.word node365927
node796802:
.word 6574902
.word node255386
node255386:
.word 7689010
.word 0
node365927:
.word 6574896
.word node926440
# column #4
.align 2
card_list365927:
.word 5  # list's size
.word node888233 # address of list's head
node244854:
.word 7689017
.word 0
node204701:
.word 6574897
.word node530884
node888233:
.word 6574899
.word node28766
node28766:
.word 6574903
.word node204701
node530884:
.word 6574901
.word node244854
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
node118446:
.word 6574903
.word node414155
node4330:
.word 7689010
.word 0
node801411:
.word 6574901
.word node118446


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


# Invalid column number
.data
.align 2
move: .word 1115137
##### Deck #####
.align 2
deck:
.word 80  # list's size
.word node682408 # address of list's head
node22212:
.word 6574904
.word node565654
node863797:
.word 6574903
.word node812888
node951007:
.word 6574901
.word node72186
node441876:
.word 6574904
.word node72526
node37497:
.word 6574896
.word node629835
node839307:
.word 6574902
.word node89327
node629835:
.word 6574898
.word node902974
node991130:
.word 6574899
.word node389676
node65905:
.word 6574902
.word node439137
node984964:
.word 6574896
.word node863797
node270436:
.word 6574900
.word node842468
node902974:
.word 6574901
.word node43807
node342856:
.word 6574897
.word node931024
node885638:
.word 6574905
.word node327956
node573053:
.word 6574904
.word node709262
node415685:
.word 6574896
.word node931747
node654794:
.word 6574901
.word node991130
node12639:
.word 6574905
.word node104256
node119970:
.word 6574897
.word 0
node195123:
.word 6574905
.word node169403
node146751:
.word 6574896
.word node889889
node72526:
.word 6574898
.word node443186
node439137:
.word 6574899
.word node251726
node242289:
.word 6574903
.word node984964
node590170:
.word 6574896
.word node65905
node542423:
.word 6574903
.word node519054
node889889:
.word 6574904
.word node30258
node931747:
.word 6574902
.word node951007
node261956:
.word 6574903
.word node482390
node265040:
.word 6574902
.word node590170
node84011:
.word 6574901
.word node270436
node482390:
.word 6574901
.word node839307
node732631:
.word 6574898
.word node296870
node964167:
.word 6574897
.word node441876
node569612:
.word 6574897
.word node912265
node230255:
.word 6574905
.word node261956
node462734:
.word 6574900
.word node392533
node470166:
.word 6574896
.word node425271
node296870:
.word 6574898
.word node22212
node216239:
.word 6574904
.word node470166
node682408:
.word 6574900
.word node265040
node169403:
.word 6574900
.word node417209
node243058:
.word 6574897
.word node536685
node709262:
.word 6574899
.word node686132
node212575:
.word 6574903
.word node415685
node812888:
.word 6574898
.word node342856
node877253:
.word 6574897
.word node146751
node389676:
.word 6574898
.word node660985
node519054:
.word 6574905
.word node569612
node10721:
.word 6574900
.word node25374
node89327:
.word 6574899
.word node964167
node810708:
.word 6574902
.word node55539
node912265:
.word 6574898
.word node12639
node568725:
.word 6574902
.word node542423
node327956:
.word 6574900
.word node573053
node686132:
.word 6574904
.word node877253
node645758:
.word 6574896
.word node930604
node931024:
.word 6574898
.word node230255
node30258:
.word 6574899
.word node960696
node536685:
.word 6574902
.word node102151
node417209:
.word 6574905
.word node732631
node104256:
.word 6574900
.word node654794
node660985:
.word 6574902
.word node84011
node425271:
.word 6574900
.word node119970
node491599:
.word 6574904
.word node568725
node392533:
.word 6574899
.word node645758
node565654:
.word 6574905
.word node885638
node960696:
.word 6574903
.word node491599
node72186:
.word 6574904
.word node636931
node930604:
.word 6574901
.word node216239
node642954:
.word 6574897
.word node242289
node379811:
.word 6574899
.word node212575
node842468:
.word 6574896
.word node810708
node43807:
.word 6574901
.word node10721
node102151:
.word 6574901
.word node642954
node25374:
.word 6574899
.word node379811
node636931:
.word 6574903
.word node243058
node443186:
.word 6574903
.word node195123
node55539:
.word 6574905
.word node462734
node251726:
.word 6574897
.word node37497
##### Board #####
.data
.align 2
board:
.word card_list78915 card_list688577 card_list231351 card_list238730 card_list365927 card_list361474 card_list397379 card_list926440 card_list498583 
# column #4
.align 2
card_list365927:
.word 5  # list's size
.word node888233 # address of list's head
node204701:
.word 6574897
.word node530884
node888233:
.word 6574899
.word node28766
node244854:
.word 7689017
.word 0
node530884:
.word 6574901
.word node244854
node28766:
.word 6574903
.word node204701
# column #1
.align 2
card_list688577:
.word 5  # list's size
.word node900563 # address of list's head
node854559:
.word 7689015
.word 0
node803929:
.word 6574897
.word node364590
node987175:
.word 6574900
.word node803929
node364590:
.word 6574898
.word node854559
node900563:
.word 6574902
.word node987175
# column #6
.align 2
card_list397379:
.word 5  # list's size
.word node586146 # address of list's head
node759406:
.word 6574896
.word node660134
node660134:
.word 7689011
.word node675400
node578498:
.word 6574902
.word node759406
node675400:
.word 7689010
.word 0
node586146:
.word 6574896
.word node578498
# column #8
.align 2
card_list498583:
.word 4  # list's size
.word node231351 # address of list's head
node841365:
.word 7689016
.word 0
node231351:
.word 6574901
.word node361474
node498583:
.word 6574898
.word node841365
node361474:
.word 6574904
.word node498583
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
node796802:
.word 6574902
.word node255386
node255386:
.word 7689010
.word 0
node688577:
.word 6574897
.word node365927
# column #2
.align 2
card_list231351:
.word 5  # list's size
.word node78915 # address of list's head
node115767:
.word 7689017
.word 0
node78915:
.word 6574896
.word node238730
node397379:
.word 6574902
.word node676440
node676440:
.word 6574905
.word node115767
node238730:
.word 6574899
.word node397379
# column #3
.align 2
card_list238730:
.word 5  # list's size
.word node889531 # address of list's head
node262656:
.word 6574899
.word node495619
node307169:
.word 6574903
.word node172449
node889531:
.word 6574902
.word node262656
node495619:
.word 6574901
.word node307169
node172449:
.word 7689012
.word 0
# column #0
.align 2
card_list78915:
.word 5  # list's size
.word node343243 # address of list's head
node118446:
.word 6574903
.word node414155
node801411:
.word 6574901
.word node118446
node343243:
.word 6574900
.word node801411
node414155:
.word 6574897
.word node4330
node4330:
.word 7689010
.word 0
# column #7
.align 2
card_list926440:
.word 5  # list's size
.word node123449 # address of list's head
node123449:
.word 6574898
.word node254892
node254892:
.word 6574901
.word node203138
node437746:
.word 7689016
.word 0
node575879:
.word 6574897
.word node437746
node203138:
.word 6574903
.word node575879


# Invalid row number
.data
.align 2
move: .word 263937
##### Deck #####
.align 2
deck:
.word 80  # list's size
.word node682408 # address of list's head
node931024:
.word 6574898
.word node230255
node389676:
.word 6574898
.word node660985
node443186:
.word 6574903
.word node195123
node660985:
.word 6574902
.word node84011
node885638:
.word 6574905
.word node327956
node951007:
.word 6574901
.word node72186
node709262:
.word 6574899
.word node686132
node732631:
.word 6574898
.word node296870
node327956:
.word 6574900
.word node573053
node12639:
.word 6574905
.word node104256
node542423:
.word 6574903
.word node519054
node930604:
.word 6574901
.word node216239
node812888:
.word 6574898
.word node342856
node491599:
.word 6574904
.word node568725
node425271:
.word 6574900
.word node119970
node296870:
.word 6574898
.word node22212
node839307:
.word 6574902
.word node89327
node43807:
.word 6574901
.word node10721
node342856:
.word 6574897
.word node931024
node22212:
.word 6574904
.word node565654
node565654:
.word 6574905
.word node885638
node991130:
.word 6574899
.word node389676
node251726:
.word 6574897
.word node37497
node10721:
.word 6574900
.word node25374
node72186:
.word 6574904
.word node636931
node682408:
.word 6574900
.word node265040
node242289:
.word 6574903
.word node984964
node536685:
.word 6574902
.word node102151
node686132:
.word 6574904
.word node877253
node964167:
.word 6574897
.word node441876
node30258:
.word 6574899
.word node960696
node960696:
.word 6574903
.word node491599
node877253:
.word 6574897
.word node146751
node636931:
.word 6574903
.word node243058
node568725:
.word 6574902
.word node542423
node216239:
.word 6574904
.word node470166
node261956:
.word 6574903
.word node482390
node37497:
.word 6574896
.word node629835
node65905:
.word 6574902
.word node439137
node195123:
.word 6574905
.word node169403
node89327:
.word 6574899
.word node964167
node265040:
.word 6574902
.word node590170
node810708:
.word 6574902
.word node55539
node169403:
.word 6574900
.word node417209
node439137:
.word 6574899
.word node251726
node984964:
.word 6574896
.word node863797
node379811:
.word 6574899
.word node212575
node889889:
.word 6574904
.word node30258
node84011:
.word 6574901
.word node270436
node931747:
.word 6574902
.word node951007
node863797:
.word 6574903
.word node812888
node629835:
.word 6574898
.word node902974
node590170:
.word 6574896
.word node65905
node462734:
.word 6574900
.word node392533
node230255:
.word 6574905
.word node261956
node470166:
.word 6574896
.word node425271
node912265:
.word 6574898
.word node12639
node573053:
.word 6574904
.word node709262
node642954:
.word 6574897
.word node242289
node654794:
.word 6574901
.word node991130
node25374:
.word 6574899
.word node379811
node392533:
.word 6574899
.word node645758
node146751:
.word 6574896
.word node889889
node842468:
.word 6574896
.word node810708
node441876:
.word 6574904
.word node72526
node55539:
.word 6574905
.word node462734
node212575:
.word 6574903
.word node415685
node104256:
.word 6574900
.word node654794
node417209:
.word 6574905
.word node732631
node569612:
.word 6574897
.word node912265
node243058:
.word 6574897
.word node536685
node519054:
.word 6574905
.word node569612
node902974:
.word 6574901
.word node43807
node102151:
.word 6574901
.word node642954
node119970:
.word 6574897
.word 0
node415685:
.word 6574896
.word node931747
node482390:
.word 6574901
.word node839307
node270436:
.word 6574900
.word node842468
node645758:
.word 6574896
.word node930604
node72526:
.word 6574898
.word node443186
##### Board #####
.data
.align 2
board:
.word card_list78915 card_list688577 card_list231351 card_list238730 card_list365927 card_list361474 card_list397379 card_list926440 card_list498583 
# column #8
.align 2
card_list498583:
.word 4  # list's size
.word node231351 # address of list's head
node231351:
.word 6574901
.word node361474
node498583:
.word 6574898
.word node841365
node361474:
.word 6574904
.word node498583
node841365:
.word 7689016
.word 0
# column #3
.align 2
card_list238730:
.word 5  # list's size
.word node889531 # address of list's head
node172449:
.word 7689012
.word 0
node495619:
.word 6574901
.word node307169
node307169:
.word 6574903
.word node172449
node262656:
.word 6574899
.word node495619
node889531:
.word 6574902
.word node262656
# column #6
.align 2
card_list397379:
.word 5  # list's size
.word node586146 # address of list's head
node586146:
.word 6574896
.word node578498
node660134:
.word 7689011
.word node675400
node675400:
.word 7689010
.word 0
node759406:
.word 6574896
.word node660134
node578498:
.word 6574902
.word node759406
# column #0
.align 2
card_list78915:
.word 5  # list's size
.word node343243 # address of list's head
node343243:
.word 6574900
.word node801411
node801411:
.word 6574901
.word node118446
node414155:
.word 6574897
.word node4330
node4330:
.word 7689010
.word 0
node118446:
.word 6574903
.word node414155
# column #7
.align 2
card_list926440:
.word 5  # list's size
.word node123449 # address of list's head
node254892:
.word 6574901
.word node203138
node203138:
.word 6574903
.word node575879
node575879:
.word 6574897
.word node437746
node437746:
.word 7689016
.word 0
node123449:
.word 6574898
.word node254892
# column #1
.align 2
card_list688577:
.word 5  # list's size
.word node900563 # address of list's head
node900563:
.word 6574902
.word node987175
node803929:
.word 6574897
.word node364590
node854559:
.word 7689015
.word 0
node364590:
.word 6574898
.word node854559
node987175:
.word 6574900
.word node803929
# column #4
.align 2
card_list365927:
.word 5  # list's size
.word node888233 # address of list's head
node28766:
.word 6574903
.word node204701
node244854:
.word 7689017
.word 0
node888233:
.word 6574899
.word node28766
node530884:
.word 6574901
.word node244854
node204701:
.word 6574897
.word node530884
# column #2
.align 2
card_list231351:
.word 5  # list's size
.word node78915 # address of list's head
node115767:
.word 7689017
.word 0
node78915:
.word 6574896
.word node238730
node676440:
.word 6574905
.word node115767
node397379:
.word 6574902
.word node676440
node238730:
.word 6574899
.word node397379
# column #5
.align 2
card_list361474:
.word 5  # list's size
.word node688577 # address of list's head
node365927:
.word 6574896
.word node926440
node688577:
.word 6574897
.word node365927
node255386:
.word 7689010
.word 0
node796802:
.word 6574902
.word node255386
node926440:
.word 6574903
.word node796802


# Donor and recipient columns are the same
.data
.align 2
move: .word 66561
##### Deck #####
.align 2
deck:
.word 80  # list's size
.word node682408 # address of list's head
node590170:
.word 6574896
.word node65905
node810708:
.word 6574902
.word node55539
node686132:
.word 6574904
.word node877253
node885638:
.word 6574905
.word node327956
node654794:
.word 6574901
.word node991130
node12639:
.word 6574905
.word node104256
node642954:
.word 6574897
.word node242289
node102151:
.word 6574901
.word node642954
node72526:
.word 6574898
.word node443186
node25374:
.word 6574899
.word node379811
node43807:
.word 6574901
.word node10721
node912265:
.word 6574898
.word node12639
node732631:
.word 6574898
.word node296870
node146751:
.word 6574896
.word node889889
node327956:
.word 6574900
.word node573053
node212575:
.word 6574903
.word node415685
node84011:
.word 6574901
.word node270436
node119970:
.word 6574897
.word 0
node30258:
.word 6574899
.word node960696
node242289:
.word 6574903
.word node984964
node270436:
.word 6574900
.word node842468
node55539:
.word 6574905
.word node462734
node230255:
.word 6574905
.word node261956
node645758:
.word 6574896
.word node930604
node682408:
.word 6574900
.word node265040
node709262:
.word 6574899
.word node686132
node37497:
.word 6574896
.word node629835
node660985:
.word 6574902
.word node84011
node462734:
.word 6574900
.word node392533
node89327:
.word 6574899
.word node964167
node265040:
.word 6574902
.word node590170
node536685:
.word 6574902
.word node102151
node443186:
.word 6574903
.word node195123
node863797:
.word 6574903
.word node812888
node951007:
.word 6574901
.word node72186
node243058:
.word 6574897
.word node536685
node964167:
.word 6574897
.word node441876
node991130:
.word 6574899
.word node389676
node902974:
.word 6574901
.word node43807
node296870:
.word 6574898
.word node22212
node379811:
.word 6574899
.word node212575
node930604:
.word 6574901
.word node216239
node889889:
.word 6574904
.word node30258
node569612:
.word 6574897
.word node912265
node169403:
.word 6574900
.word node417209
node65905:
.word 6574902
.word node439137
node10721:
.word 6574900
.word node25374
node251726:
.word 6574897
.word node37497
node342856:
.word 6574897
.word node931024
node636931:
.word 6574903
.word node243058
node568725:
.word 6574902
.word node542423
node22212:
.word 6574904
.word node565654
node216239:
.word 6574904
.word node470166
node439137:
.word 6574899
.word node251726
node960696:
.word 6574903
.word node491599
node415685:
.word 6574896
.word node931747
node389676:
.word 6574898
.word node660985
node72186:
.word 6574904
.word node636931
node812888:
.word 6574898
.word node342856
node519054:
.word 6574905
.word node569612
node629835:
.word 6574898
.word node902974
node470166:
.word 6574896
.word node425271
node931747:
.word 6574902
.word node951007
node482390:
.word 6574901
.word node839307
node195123:
.word 6574905
.word node169403
node425271:
.word 6574900
.word node119970
node573053:
.word 6574904
.word node709262
node877253:
.word 6574897
.word node146751
node839307:
.word 6574902
.word node89327
node104256:
.word 6574900
.word node654794
node842468:
.word 6574896
.word node810708
node542423:
.word 6574903
.word node519054
node491599:
.word 6574904
.word node568725
node931024:
.word 6574898
.word node230255
node392533:
.word 6574899
.word node645758
node565654:
.word 6574905
.word node885638
node984964:
.word 6574896
.word node863797
node441876:
.word 6574904
.word node72526
node417209:
.word 6574905
.word node732631
node261956:
.word 6574903
.word node482390
##### Board #####
.data
.align 2
board:
.word card_list78915 card_list688577 card_list231351 card_list238730 card_list365927 card_list361474 card_list397379 card_list926440 card_list498583 
# column #8
.align 2
card_list498583:
.word 4  # list's size
.word node231351 # address of list's head
node231351:
.word 6574901
.word node361474
node361474:
.word 6574904
.word node498583
node841365:
.word 7689016
.word 0
node498583:
.word 6574898
.word node841365
# column #6
.align 2
card_list397379:
.word 5  # list's size
.word node586146 # address of list's head
node586146:
.word 6574896
.word node578498
node675400:
.word 7689010
.word 0
node759406:
.word 6574896
.word node660134
node660134:
.word 7689011
.word node675400
node578498:
.word 6574902
.word node759406
# column #7
.align 2
card_list926440:
.word 5  # list's size
.word node123449 # address of list's head
node123449:
.word 6574898
.word node254892
node437746:
.word 7689016
.word 0
node254892:
.word 6574901
.word node203138
node203138:
.word 6574903
.word node575879
node575879:
.word 6574897
.word node437746
# column #2
.align 2
card_list231351:
.word 5  # list's size
.word node78915 # address of list's head
node676440:
.word 6574905
.word node115767
node238730:
.word 6574899
.word node397379
node397379:
.word 6574902
.word node676440
node115767:
.word 7689017
.word 0
node78915:
.word 6574896
.word node238730
# column #3
.align 2
card_list238730:
.word 5  # list's size
.word node889531 # address of list's head
node307169:
.word 6574903
.word node172449
node262656:
.word 6574899
.word node495619
node495619:
.word 6574901
.word node307169
node172449:
.word 7689012
.word 0
node889531:
.word 6574902
.word node262656
# column #0
.align 2
card_list78915:
.word 5  # list's size
.word node343243 # address of list's head
node4330:
.word 7689010
.word 0
node343243:
.word 6574900
.word node801411
node414155:
.word 6574897
.word node4330
node801411:
.word 6574901
.word node118446
node118446:
.word 6574903
.word node414155
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
node204701:
.word 6574897
.word node530884
node530884:
.word 6574901
.word node244854
node244854:
.word 7689017
.word 0
# column #5
.align 2
card_list361474:
.word 5  # list's size
.word node688577 # address of list's head
node796802:
.word 6574902
.word node255386
node365927:
.word 6574896
.word node926440
node255386:
.word 7689010
.word 0
node688577:
.word 6574897
.word node365927
node926440:
.word 6574903
.word node796802
# column #1
.align 2
card_list688577:
.word 5  # list's size
.word node900563 # address of list's head
node803929:
.word 6574897
.word node364590
node854559:
.word 7689015
.word 0
node900563:
.word 6574902
.word node987175
node987175:
.word 6574900
.word node803929
node364590:
.word 6574898
.word node854559


# Attempt to move a face-down card
.data
.align 2
move: .word 459265
##### Deck #####
.align 2
deck:
.word 80  # list's size
.word node682408 # address of list's head
node72526:
.word 6574898
.word node443186
node960696:
.word 6574903
.word node491599
node251726:
.word 6574897
.word node37497
node12639:
.word 6574905
.word node104256
node119970:
.word 6574897
.word 0
node568725:
.word 6574902
.word node542423
node37497:
.word 6574896
.word node629835
node536685:
.word 6574902
.word node102151
node839307:
.word 6574902
.word node89327
node569612:
.word 6574897
.word node912265
node146751:
.word 6574896
.word node889889
node590170:
.word 6574896
.word node65905
node25374:
.word 6574899
.word node379811
node84011:
.word 6574901
.word node270436
node931747:
.word 6574902
.word node951007
node243058:
.word 6574897
.word node536685
node645758:
.word 6574896
.word node930604
node991130:
.word 6574899
.word node389676
node812888:
.word 6574898
.word node342856
node104256:
.word 6574900
.word node654794
node22212:
.word 6574904
.word node565654
node491599:
.word 6574904
.word node568725
node89327:
.word 6574899
.word node964167
node65905:
.word 6574902
.word node439137
node43807:
.word 6574901
.word node10721
node72186:
.word 6574904
.word node636931
node392533:
.word 6574899
.word node645758
node889889:
.word 6574904
.word node30258
node842468:
.word 6574896
.word node810708
node425271:
.word 6574900
.word node119970
node462734:
.word 6574900
.word node392533
node964167:
.word 6574897
.word node441876
node951007:
.word 6574901
.word node72186
node709262:
.word 6574899
.word node686132
node863797:
.word 6574903
.word node812888
node10721:
.word 6574900
.word node25374
node930604:
.word 6574901
.word node216239
node102151:
.word 6574901
.word node642954
node342856:
.word 6574897
.word node931024
node810708:
.word 6574902
.word node55539
node686132:
.word 6574904
.word node877253
node439137:
.word 6574899
.word node251726
node389676:
.word 6574898
.word node660985
node682408:
.word 6574900
.word node265040
node629835:
.word 6574898
.word node902974
node169403:
.word 6574900
.word node417209
node270436:
.word 6574900
.word node842468
node230255:
.word 6574905
.word node261956
node55539:
.word 6574905
.word node462734
node902974:
.word 6574901
.word node43807
node660985:
.word 6574902
.word node84011
node912265:
.word 6574898
.word node12639
node296870:
.word 6574898
.word node22212
node542423:
.word 6574903
.word node519054
node265040:
.word 6574902
.word node590170
node573053:
.word 6574904
.word node709262
node885638:
.word 6574905
.word node327956
node470166:
.word 6574896
.word node425271
node415685:
.word 6574896
.word node931747
node519054:
.word 6574905
.word node569612
node30258:
.word 6574899
.word node960696
node441876:
.word 6574904
.word node72526
node195123:
.word 6574905
.word node169403
node931024:
.word 6574898
.word node230255
node242289:
.word 6574903
.word node984964
node327956:
.word 6574900
.word node573053
node379811:
.word 6574899
.word node212575
node212575:
.word 6574903
.word node415685
node642954:
.word 6574897
.word node242289
node654794:
.word 6574901
.word node991130
node482390:
.word 6574901
.word node839307
node732631:
.word 6574898
.word node296870
node636931:
.word 6574903
.word node243058
node443186:
.word 6574903
.word node195123
node565654:
.word 6574905
.word node885638
node984964:
.word 6574896
.word node863797
node261956:
.word 6574903
.word node482390
node417209:
.word 6574905
.word node732631
node877253:
.word 6574897
.word node146751
node216239:
.word 6574904
.word node470166
##### Board #####
.data
.align 2
board:
.word card_list78915 card_list688577 card_list231351 card_list238730 card_list365927 card_list361474 card_list397379 card_list926440 card_list498583 
# column #8
.align 2
card_list498583:
.word 4  # list's size
.word node231351 # address of list's head
node231351:
.word 6574901
.word node361474
node498583:
.word 6574898
.word node841365
node841365:
.word 7689016
.word 0
node361474:
.word 6574904
.word node498583
# column #6
.align 2
card_list397379:
.word 5  # list's size
.word node586146 # address of list's head
node675400:
.word 7689010
.word 0
node586146:
.word 6574896
.word node578498
node759406:
.word 6574896
.word node660134
node660134:
.word 7689011
.word node675400
node578498:
.word 6574902
.word node759406
# column #2
.align 2
card_list231351:
.word 5  # list's size
.word node78915 # address of list's head
node397379:
.word 6574902
.word node676440
node115767:
.word 7689017
.word 0
node78915:
.word 6574896
.word node238730
node676440:
.word 6574905
.word node115767
node238730:
.word 6574899
.word node397379
# column #0
.align 2
card_list78915:
.word 5  # list's size
.word node343243 # address of list's head
node801411:
.word 6574901
.word node118446
node118446:
.word 6574903
.word node414155
node4330:
.word 7689010
.word 0
node343243:
.word 6574900
.word node801411
node414155:
.word 6574897
.word node4330
# column #5
.align 2
card_list361474:
.word 5  # list's size
.word node688577 # address of list's head
node796802:
.word 6574902
.word node255386
node365927:
.word 6574896
.word node926440
node255386:
.word 7689010
.word 0
node926440:
.word 6574903
.word node796802
node688577:
.word 6574897
.word node365927
# column #7
.align 2
card_list926440:
.word 5  # list's size
.word node123449 # address of list's head
node123449:
.word 6574898
.word node254892
node437746:
.word 7689016
.word 0
node203138:
.word 6574903
.word node575879
node575879:
.word 6574897
.word node437746
node254892:
.word 6574901
.word node203138
# column #4
.align 2
card_list365927:
.word 5  # list's size
.word node888233 # address of list's head
node888233:
.word 6574899
.word node28766
node530884:
.word 6574901
.word node244854
node244854:
.word 7689017
.word 0
node204701:
.word 6574897
.word node530884
node28766:
.word 6574903
.word node204701
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
node172449:
.word 7689012
.word 0
node262656:
.word 6574899
.word node495619
node495619:
.word 6574901
.word node307169
# column #1
.align 2
card_list688577:
.word 5  # list's size
.word node900563 # address of list's head
node803929:
.word 6574897
.word node364590
node854559:
.word 7689015
.word 0
node900563:
.word 6574902
.word node987175
node987175:
.word 6574900
.word node803929
node364590:
.word 6574898
.word node854559


# Attempt to move cards that are not in descending order
.data
.align 2
move: .word 524805
##### Deck #####
.align 2
deck:
.word 36  # list's size
.word node565654 # address of list's head
node119970:
.word 6574897
.word 0
node660985:
.word 6574902
.word node84011
node491599:
.word 6574904
.word node568725
node842468:
.word 6574896
.word node810708
node709262:
.word 6574899
.word node686132
node30258:
.word 6574899
.word node960696
node389676:
.word 6574898
.word node660985
node573053:
.word 6574904
.word node709262
node12639:
.word 6574905
.word node104256
node542423:
.word 6574903
.word node519054
node645758:
.word 6574896
.word node930604
node568725:
.word 6574902
.word node542423
node392533:
.word 6574899
.word node645758
node889889:
.word 6574904
.word node30258
node912265:
.word 6574898
.word node12639
node885638:
.word 6574905
.word node327956
node327956:
.word 6574900
.word node573053
node425271:
.word 6574900
.word node119970
node810708:
.word 6574902
.word node55539
node470166:
.word 6574896
.word node425271
node519054:
.word 6574905
.word node569612
node104256:
.word 6574900
.word node654794
node55539:
.word 6574905
.word node462734
node84011:
.word 6574901
.word node270436
node270436:
.word 6574900
.word node842468
node654794:
.word 6574901
.word node991130
node462734:
.word 6574900
.word node392533
node569612:
.word 6574897
.word node912265
node686132:
.word 6574904
.word node877253
node877253:
.word 6574897
.word node146751
node565654:
.word 6574905
.word node885638
node960696:
.word 6574903
.word node491599
node146751:
.word 6574896
.word node889889
node991130:
.word 6574899
.word node389676
node930604:
.word 6574901
.word node216239
node216239:
.word 6574904
.word node470166
##### Board #####
.data
.align 2
board:
.word card_list78915 card_list688577 card_list231351 card_list238730 card_list365927 card_list361474 card_list397379 card_list926440 card_list498583 
# column #6
.align 2
card_list397379:
.word 5  # list's size
.word node586146 # address of list's head
node660134:
.word 6574899
.word node675400
node586146:
.word 6574896
.word node578498
node578498:
.word 6574902
.word node759406
node675400:
.word 7689010
.word 0
node759406:
.word 6574896
.word node660134
# column #5
.align 2
card_list361474:
.word 5  # list's size
.word node688577 # address of list's head
node926440:
.word 7689015
.word node796802
node255386:
.word 7689010
.word 0
node796802:
.word 7689014
.word node255386
node688577:
.word 6574897
.word node365927
node365927:
.word 6574896
.word node926440
# column #4
.align 2
card_list365927:
.word 5  # list's size
.word node888233 # address of list's head
node888233:
.word 6574899
.word node28766
node204701:
.word 6574897
.word node530884
node530884:
.word 6574901
.word node244854
node244854:
.word 7689017
.word 0
node28766:
.word 6574903
.word node204701
# column #1
.align 2
card_list688577:
.word 5  # list's size
.word node900563 # address of list's head
node987175:
.word 6574900
.word node803929
node854559:
.word 7689015
.word 0
node364590:
.word 6574898
.word node854559
node803929:
.word 6574897
.word node364590
node900563:
.word 6574902
.word node987175
# column #0
.align 2
card_list78915:
.word 5  # list's size
.word node343243 # address of list's head
node801411:
.word 6574901
.word node118446
node4330:
.word 7689010
.word 0
node118446:
.word 6574903
.word node414155
node343243:
.word 6574900
.word node801411
node414155:
.word 6574897
.word node4330
# column #8
.align 2
card_list498583:
.word 4  # list's size
.word node231351 # address of list's head
node231351:
.word 6574901
.word node361474
node361474:
.word 6574904
.word node498583
node498583:
.word 6574898
.word node841365
node841365:
.word 7689016
.word 0
# column #3
.align 2
card_list238730:
.word 5  # list's size
.word node889531 # address of list's head
node172449:
.word 7689012
.word 0
node307169:
.word 6574903
.word node172449
node889531:
.word 6574902
.word node262656
node262656:
.word 6574899
.word node495619
node495619:
.word 6574901
.word node307169
# column #2
.align 2
card_list231351:
.word 5  # list's size
.word node78915 # address of list's head
node397379:
.word 6574902
.word node676440
node238730:
.word 6574899
.word node397379
node115767:
.word 7689017
.word 0
node676440:
.word 6574905
.word node115767
node78915:
.word 6574896
.word node238730
# column #7
.align 2
card_list926440:
.word 5  # list's size
.word node123449 # address of list's head
node123449:
.word 6574898
.word node254892
node437746:
.word 7689016
.word 0
node203138:
.word 6574903
.word node575879
node575879:
.word 6574897
.word node437746
node254892:
.word 6574901
.word node203138


# Attempt to move movable cards to an invalid recipient column
.data
.align 2
move: .word 197125
##### Deck #####
.align 2
deck:
.word 36  # list's size
.word node565654 # address of list's head
node12639:
.word 6574905
.word node104256
node425271:
.word 6574900
.word node119970
node104256:
.word 6574900
.word node654794
node392533:
.word 6574899
.word node645758
node389676:
.word 6574898
.word node660985
node270436:
.word 6574900
.word node842468
node810708:
.word 6574902
.word node55539
node660985:
.word 6574902
.word node84011
node709262:
.word 6574899
.word node686132
node568725:
.word 6574902
.word node542423
node146751:
.word 6574896
.word node889889
node645758:
.word 6574896
.word node930604
node877253:
.word 6574897
.word node146751
node573053:
.word 6574904
.word node709262
node462734:
.word 6574900
.word node392533
node519054:
.word 6574905
.word node569612
node491599:
.word 6574904
.word node568725
node842468:
.word 6574896
.word node810708
node885638:
.word 6574905
.word node327956
node991130:
.word 6574899
.word node389676
node327956:
.word 6574900
.word node573053
node84011:
.word 6574901
.word node270436
node119970:
.word 6574897
.word 0
node216239:
.word 6574904
.word node470166
node654794:
.word 6574901
.word node991130
node889889:
.word 6574904
.word node30258
node55539:
.word 6574905
.word node462734
node30258:
.word 6574899
.word node960696
node930604:
.word 6574901
.word node216239
node470166:
.word 6574896
.word node425271
node542423:
.word 6574903
.word node519054
node569612:
.word 6574897
.word node912265
node960696:
.word 6574903
.word node491599
node565654:
.word 6574905
.word node885638
node686132:
.word 6574904
.word node877253
node912265:
.word 6574898
.word node12639
##### Board #####
.data
.align 2
board:
.word card_list788507 card_list950569 card_list805706 card_list880612 card_list654841 card_list769376 card_list685915 card_list590677 card_list505122 
# column #5
.align 2
card_list769376:
.word 5  # list's size
.word node688577 # address of list's head
node796802:
.word 7689014
.word node255386
node688577:
.word 6574897
.word node365927
node926440:
.word 7689015
.word node796802
node255386:
.word 7689013
.word 0
node365927:
.word 6574896
.word node926440
# column #6
.align 2
card_list685915:
.word 5  # list's size
.word node586146 # address of list's head
node759406:
.word 6574896
.word node660134
node660134:
.word 6574899
.word node675400
node578498:
.word 6574902
.word node759406
node675400:
.word 7689010
.word 0
node586146:
.word 6574896
.word node578498
# column #4
.align 2
card_list654841:
.word 5  # list's size
.word node888233 # address of list's head
node204701:
.word 6574897
.word node530884
node28766:
.word 6574903
.word node204701
node244854:
.word 7689017
.word 0
node530884:
.word 6574901
.word node244854
node888233:
.word 6574899
.word node28766
# column #1
.align 2
card_list950569:
.word 5  # list's size
.word node900563 # address of list's head
node987175:
.word 6574900
.word node803929
node900563:
.word 6574902
.word node987175
node803929:
.word 6574897
.word node364590
node364590:
.word 6574898
.word node854559
node854559:
.word 7689015
.word 0
# column #7
.align 2
card_list590677:
.word 5  # list's size
.word node123449 # address of list's head
node203138:
.word 6574903
.word node575879
node575879:
.word 6574897
.word node437746
node123449:
.word 6574898
.word node254892
node254892:
.word 6574901
.word node203138
node437746:
.word 7689016
.word 0
# column #3
.align 2
card_list880612:
.word 5  # list's size
.word node889531 # address of list's head
node307169:
.word 6574903
.word node172449
node495619:
.word 6574901
.word node307169
node889531:
.word 6574902
.word node262656
node172449:
.word 7689012
.word 0
node262656:
.word 6574899
.word node495619
# column #2
.align 2
card_list805706:
.word 5  # list's size
.word node78915 # address of list's head
node238730:
.word 6574899
.word node397379
node78915:
.word 6574896
.word node238730
node676440:
.word 6574905
.word node115767
node397379:
.word 6574902
.word node676440
node115767:
.word 7689017
.word 0
# column #8
.align 2
card_list505122:
.word 4  # list's size
.word node231351 # address of list's head
node841365:
.word 7689016
.word 0
node361474:
.word 6574904
.word node498583
node231351:
.word 6574901
.word node361474
node498583:
.word 6574898
.word node841365
# column #0
.align 2
card_list788507:
.word 5  # list's size
.word node343243 # address of list's head
node801411:
.word 6574901
.word node118446
node118446:
.word 6574903
.word node414155
node4330:
.word 7689010
.word 0
node414155:
.word 6574897
.word node4330
node343243:
.word 6574900
.word node801411


