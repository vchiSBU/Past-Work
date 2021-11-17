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


# Invalid move
.data
##### Deck #####
.align 2
deck:
.word 36  # list's size
.word node698199 # address of list's head
node434444:
.word 6574896
.word node227249
node568364:
.word 6574900
.word node839048
node321550:
.word 6574901
.word node218764
node54692:
.word 6574897
.word node429366
node963141:
.word 6574905
.word node434444
node399939:
.word 6574902
.word node321550
node529306:
.word 6574897
.word node663125
node142444:
.word 6574902
.word node791949
node126326:
.word 6574898
.word node645684
node304209:
.word 6574900
.word node204472
node61258:
.word 6574901
.word node425726
node204472:
.word 6574900
.word node142444
node429366:
.word 6574905
.word node572689
node499515:
.word 6574896
.word node126326
node572689:
.word 6574901
.word node963141
node227249:
.word 6574904
.word node529306
node645684:
.word 6574903
.word node504014
node698199:
.word 6574896
.word node841609
node841609:
.word 6574903
.word node4323
node571232:
.word 6574901
.word node399939
node218764:
.word 6574905
.word node499515
node265743:
.word 6574899
.word node304209
node839048:
.word 6574904
.word node61258
node959156:
.word 6574897
.word node815994
node245718:
.word 6574896
.word node731923
node791949:
.word 6574905
.word node571232
node610812:
.word 6574897
.word node54692
node731923:
.word 6574899
.word node426376
node504014:
.word 6574903
.word node245718
node426376:
.word 6574899
.word node849856
node4323:
.word 6574900
.word node959156
node663125:
.word 6574902
.word node568364
node425726:
.word 6574904
.word node265743
node43343:
.word 6574901
.word 0
node849856:
.word 6574905
.word node43343
node815994:
.word 6574898
.word node610812
##### Board #####
.data
.align 2
board:
.word card_list398364 card_list616889 card_list876718 card_list546479 card_list808222 card_list685185 card_list498254 card_list136205 card_list109883 
# column #5
.align 2
card_list685185:
.word 5  # list's size
.word node308485 # address of list's head
node308485:
.word 6574897
.word node723201
node961537:
.word 6574902
.word node355112
node723201:
.word 6574904
.word node628151
node355112:
.word 7689014
.word 0
node628151:
.word 6574897
.word node961537
# column #2
.align 2
card_list876718:
.word 5  # list's size
.word node934982 # address of list's head
node934982:
.word 6574903
.word node475159
node475159:
.word 6574900
.word node136979
node293753:
.word 7689012
.word 0
node388985:
.word 6574900
.word node293753
node136979:
.word 6574903
.word node388985
# column #3
.align 2
card_list546479:
.word 5  # list's size
.word node767669 # address of list's head
node339327:
.word 7689008
.word 0
node608755:
.word 6574898
.word node536652
node767669:
.word 6574898
.word node376430
node536652:
.word 6574897
.word node339327
node376430:
.word 6574903
.word node608755
# column #8
.align 2
card_list109883:
.word 4  # list's size
.word node424303 # address of list's head
node185268:
.word 6574901
.word node138866
node138866:
.word 7689017
.word 0
node473681:
.word 6574904
.word node185268
node424303:
.word 6574896
.word node473681
# column #6
.align 2
card_list498254:
.word 5  # list's size
.word node131468 # address of list's head
node678035:
.word 6574899
.word node509372
node170303:
.word 7689010
.word 0
node509372:
.word 6574903
.word node170303
node131468:
.word 6574898
.word node785695
node785695:
.word 6574896
.word node678035
# column #7
.align 2
card_list136205:
.word 5  # list's size
.word node220160 # address of list's head
node257013:
.word 6574900
.word node498986
node220160:
.word 6574902
.word node257013
node231932:
.word 6574903
.word node612381
node612381:
.word 7689010
.word 0
node498986:
.word 6574899
.word node231932
# column #1
.align 2
card_list616889:
.word 5  # list's size
.word node695473 # address of list's head
node662738:
.word 7689016
.word 0
node107539:
.word 6574898
.word node662738
node695473:
.word 6574905
.word node317733
node448198:
.word 6574897
.word node107539
node317733:
.word 6574904
.word node448198
# column #4
.align 2
card_list808222:
.word 5  # list's size
.word node393304 # address of list's head
node254353:
.word 6574899
.word node725890
node81487:
.word 7689016
.word 0
node393304:
.word 6574896
.word node856450
node725890:
.word 6574901
.word node81487
node856450:
.word 6574902
.word node254353
# column #0
.align 2
card_list398364:
.word 5  # list's size
.word node530610 # address of list's head
node666456:
.word 6574902
.word node993087
node530610:
.word 6574905
.word node666456
node571544:
.word 6574901
.word node181953
node993087:
.word 6574899
.word node571544
node181953:
.word 7689011
.word 0
##### Move #####
move: .word 519


# Moving some of the cards in the donor column to an empty recipient column
.data
##### Deck #####
.align 2
deck:
.word 36  # list's size
.word node75178 # address of list's head
node12789:
.word 6574899
.word node999514
node835851:
.word 6574904
.word node182794
node20570:
.word 6574905
.word node144845
node405093:
.word 6574897
.word node652846
node969427:
.word 6574904
.word node12789
node794855:
.word 6574899
.word node44142
node901583:
.word 6574897
.word node867206
node850990:
.word 6574903
.word node668662
node136915:
.word 6574900
.word node680988
node668662:
.word 6574903
.word node869649
node75178:
.word 6574896
.word node694035
node641645:
.word 6574897
.word node960555
node652846:
.word 6574905
.word node291208
node69750:
.word 6574902
.word node344839
node44142:
.word 6574899
.word node20570
node694035:
.word 6574903
.word node489090
node182794:
.word 6574901
.word node969427
node107880:
.word 6574901
.word node69750
node288966:
.word 6574896
.word node536753
node960555:
.word 6574902
.word node317596
node536753:
.word 6574898
.word node850990
node790363:
.word 6574897
.word node405093
node181585:
.word 6574905
.word node374171
node867206:
.word 6574898
.word node790363
node144845:
.word 6574901
.word 0
node489090:
.word 6574900
.word node901583
node317596:
.word 6574900
.word node835851
node313821:
.word 6574905
.word node288966
node999514:
.word 6574900
.word node136915
node712910:
.word 6574905
.word node107880
node374171:
.word 6574896
.word node840979
node869649:
.word 6574896
.word node794855
node840979:
.word 6574904
.word node641645
node291208:
.word 6574901
.word node181585
node680988:
.word 6574902
.word node712910
node344839:
.word 6574901
.word node313821
##### Board #####
.data
.align 2
board:
.word card_list295717 card_list421547 card_list98573 card_list839744 card_list65202 card_list900400 card_list382567 card_list415699 card_list795444 
# column #2
.align 2
card_list98573:
.word 8  # list's size
.word node613559 # address of list's head
node966723:
.word 7689014
.word node390782
node421751:
.word 7689015
.word node966723
node201957:
.word 7689011
.word node715018
node715018:
.word 7689010
.word node340009
node537913:
.word 7689012
.word node201957
node613559:
.word 7689016
.word node421751
node340009:
.word 7689009
.word 0
node390782:
.word 7689013
.word node537913
# column #5
.align 2
card_list900400:
.word 0  # list's size
.word 0  # address of list's head (null)
# column #6
.align 2
card_list382567:
.word 0  # list's size
.word 0  # address of list's head (null)
# column #4
.align 2
card_list65202:
.word 1  # list's size
.word node414241 # address of list's head
node414241:
.word 7689008
.word 0
# column #0
.align 2
card_list295717:
.word 3  # list's size
.word node267723 # address of list's head
node267723:
.word 6574905
.word node988498
node988498:
.word 6574902
.word node533757
node533757:
.word 7689011
.word 0
# column #1
.align 2
card_list421547:
.word 6  # list's size
.word node266695 # address of list's head
node979079:
.word 6574904
.word node699514
node123923:
.word 6574898
.word node92237
node247430:
.word 7689015
.word 0
node266695:
.word 6574905
.word node979079
node699514:
.word 6574897
.word node123923
node92237:
.word 7689016
.word node247430
# column #8
.align 2
card_list795444:
.word 3  # list's size
.word node465155 # address of list's head
node465155:
.word 6574896
.word node970600
node694237:
.word 7689015
.word 0
node970600:
.word 7689016
.word node694237
# column #7
.align 2
card_list415699:
.word 6  # list's size
.word node502112 # address of list's head
node665413:
.word 7689009
.word node740716
node740716:
.word 7689008
.word 0
node502112:
.word 6574902
.word node713648
node411483:
.word 7689011
.word node37446
node37446:
.word 7689010
.word node665413
node713648:
.word 6574900
.word node411483
# column #3
.align 2
card_list839744:
.word 7  # list's size
.word node161645 # address of list's head
node643471:
.word 7689015
.word node464727
node992478:
.word 7689012
.word node504651
node504651:
.word 7689011
.word node803279
node161645:
.word 6574898
.word node643471
node464727:
.word 7689014
.word node630771
node630771:
.word 7689013
.word node992478
node803279:
.word 7689010
.word 0
##### Move #####
move: .word 393735


# Moving some of the cards in the donor column to a nonempty recipient column
.data
##### Deck #####
.align 2
deck:
.word 36  # list's size
.word node107668 # address of list's head
node7375:
.word 6574898
.word node310865
node554250:
.word 6574897
.word node603606
node852682:
.word 6574905
.word node144423
node868946:
.word 6574905
.word node642600
node895759:
.word 6574901
.word node852682
node127979:
.word 6574900
.word node232072
node968862:
.word 6574904
.word node746497
node847855:
.word 6574901
.word node868946
node229155:
.word 6574897
.word node554250
node341619:
.word 6574902
.word node847855
node310865:
.word 6574903
.word node956561
node119393:
.word 6574896
.word node845
node341498:
.word 6574905
.word node935179
node350485:
.word 6574904
.word node112120
node942543:
.word 6574900
.word node191266
node935179:
.word 6574901
.word node341619
node746497:
.word 6574899
.word node390989
node144423:
.word 6574896
.word node350485
node131830:
.word 6574899
.word node390498
node112120:
.word 6574897
.word node137610
node191266:
.word 6574897
.word node954692
node107668:
.word 6574896
.word node386825
node390498:
.word 6574905
.word node640788
node640788:
.word 6574901
.word 0
node348732:
.word 6574900
.word node47863
node603606:
.word 6574905
.word node895759
node642600:
.word 6574896
.word node7375
node47863:
.word 6574904
.word node352271
node232072:
.word 6574902
.word node341498
node954692:
.word 6574898
.word node229155
node352271:
.word 6574901
.word node968862
node956561:
.word 6574903
.word node119393
node845:
.word 6574899
.word node131830
node386825:
.word 6574903
.word node942543
node137610:
.word 6574902
.word node348732
node390989:
.word 6574900
.word node127979
##### Board #####
.data
.align 2
board:
.word card_list173107 card_list376468 card_list151596 card_list184021 card_list935254 card_list375962 card_list216027 card_list929376 card_list90630 
# column #5
.align 2
card_list375962:
.word 6  # list's size
.word node385589 # address of list's head
node727078:
.word 7689013
.word node827039
node827039:
.word 7689012
.word node655020
node655020:
.word 7689011
.word node160092
node800533:
.word 7689014
.word node727078
node385589:
.word 7689015
.word node800533
node160092:
.word 7689010
.word 0
# column #7
.align 2
card_list929376:
.word 6  # list's size
.word node599148 # address of list's head
node599148:
.word 6574902
.word node285816
node144245:
.word 7689011
.word node844580
node844580:
.word 7689010
.word node770646
node770646:
.word 7689009
.word node951401
node951401:
.word 7689008
.word 0
node285816:
.word 7689012
.word node144245
# column #4
.align 2
card_list935254:
.word 0  # list's size
.word 0  # address of list's head (null)
# column #1
.align 2
card_list376468:
.word 2  # list's size
.word node958227 # address of list's head
node958227:
.word 6574905
.word node878109
node878109:
.word 7689016
.word 0
# column #8
.align 2
card_list90630:
.word 3  # list's size
.word node168329 # address of list's head
node614944:
.word 7689016
.word node273666
node168329:
.word 6574896
.word node614944
node273666:
.word 7689015
.word 0
# column #3
.align 2
card_list184021:
.word 1  # list's size
.word node671275 # address of list's head
node671275:
.word 7689010
.word 0
# column #0
.align 2
card_list173107:
.word 5  # list's size
.word node643287 # address of list's head
node827274:
.word 6574902
.word node330448
node330448:
.word 7689011
.word node473759
node473759:
.word 7689010
.word node565407
node565407:
.word 7689009
.word 0
node643287:
.word 6574905
.word node827274
# column #6
.align 2
card_list216027:
.word 2  # list's size
.word node268740 # address of list's head
node268740:
.word 7689016
.word node514603
node514603:
.word 7689015
.word 0
# column #2
.align 2
card_list151596:
.word 9  # list's size
.word node475439 # address of list's head
node475439:
.word 7689016
.word node384111
node979461:
.word 7689009
.word node703299
node384111:
.word 7689015
.word node56060
node104705:
.word 7689010
.word node979461
node176883:
.word 7689012
.word node357100
node32414:
.word 7689013
.word node176883
node703299:
.word 7689008
.word 0
node357100:
.word 7689011
.word node104705
node56060:
.word 7689014
.word node32414
##### Move #####
move: .word 65794


# Moving all of the cards in the donor column to an empty recipient column
.data
##### Deck #####
.align 2
deck:
.word 36  # list's size
.word node867206 # address of list's head
node369370:
.word 6574898
.word node978838
node144460:
.word 6574904
.word node599033
node779694:
.word 6574905
.word node56784
node690593:
.word 6574905
.word node410170
node562788:
.word 6574902
.word node868954
node461786:
.word 6574898
.word node571435
node955482:
.word 6574897
.word node636889
node636889:
.word 6574905
.word node244994
node360479:
.word 6574904
.word node527328
node527328:
.word 6574897
.word node404462
node868954:
.word 6574905
.word node171179
node849592:
.word 6574903
.word node322034
node978838:
.word 6574903
.word node849592
node404462:
.word 6574902
.word node111463
node410170:
.word 6574901
.word 0
node867206:
.word 6574896
.word node949478
node189258:
.word 6574905
.word node495558
node171179:
.word 6574901
.word node607928
node322034:
.word 6574896
.word node978642
node385465:
.word 6574904
.word node526799
node970004:
.word 6574900
.word node562788
node978642:
.word 6574899
.word node521739
node640542:
.word 6574900
.word node970004
node495558:
.word 6574896
.word node369370
node244994:
.word 6574901
.word node779694
node607928:
.word 6574902
.word node843120
node111463:
.word 6574900
.word node385465
node469626:
.word 6574897
.word node461786
node404254:
.word 6574900
.word node469626
node526799:
.word 6574901
.word node144460
node521739:
.word 6574899
.word node690593
node56784:
.word 6574896
.word node360479
node949478:
.word 6574903
.word node404254
node843120:
.word 6574901
.word node189258
node571435:
.word 6574897
.word node955482
node599033:
.word 6574899
.word node640542
##### Board #####
.data
.align 2
board:
.word card_list601055 card_list948248 card_list901851 card_list154177 card_list707846 card_list426323 card_list924885 card_list501064 card_list880574 
# column #3
.align 2
card_list154177:
.word 1  # list's size
.word node359545 # address of list's head
node359545:
.word 7689010
.word 0
# column #8
.align 2
card_list880574:
.word 3  # list's size
.word node492342 # address of list's head
node857081:
.word 7689015
.word 0
node492342:
.word 6574896
.word node940184
node940184:
.word 7689016
.word node857081
# column #0
.align 2
card_list601055:
.word 5  # list's size
.word node327196 # address of list's head
node719340:
.word 7689011
.word node400551
node327196:
.word 6574905
.word node340179
node340179:
.word 6574902
.word node719340
node400551:
.word 7689010
.word node133747
node133747:
.word 7689009
.word 0
# column #5
.align 2
card_list426323:
.word 6  # list's size
.word node415476 # address of list's head
node771086:
.word 7689011
.word node168190
node265326:
.word 7689012
.word node771086
node34964:
.word 7689013
.word node265326
node829061:
.word 7689014
.word node34964
node168190:
.word 7689010
.word 0
node415476:
.word 7689015
.word node829061
# column #2
.align 2
card_list901851:
.word 9  # list's size
.word node452188 # address of list's head
node491614:
.word 7689008
.word 0
node441785:
.word 7689013
.word node317966
node624693:
.word 7689014
.word node441785
node317966:
.word 7689012
.word node616922
node243190:
.word 7689009
.word node491614
node650876:
.word 7689015
.word node624693
node518448:
.word 7689010
.word node243190
node452188:
.word 7689016
.word node650876
node616922:
.word 7689011
.word node518448
# column #7
.align 2
card_list501064:
.word 6  # list's size
.word node89002 # address of list's head
node114199:
.word 7689008
.word 0
node89002:
.word 6574902
.word node916018
node916018:
.word 7689012
.word node455084
node676192:
.word 7689010
.word node986012
node455084:
.word 7689011
.word node676192
node986012:
.word 7689009
.word node114199
# column #6
.align 2
card_list924885:
.word 2  # list's size
.word node602488 # address of list's head
node602488:
.word 7689016
.word node333745
node333745:
.word 7689015
.word 0
# column #4
.align 2
card_list707846:
.word 0  # list's size
.word 0  # address of list's head (null)
# column #1
.align 2
card_list948248:
.word 2  # list's size
.word node740094 # address of list's head
node740094:
.word 6574905
.word node213216
node213216:
.word 7689016
.word 0
##### Move #####
move: .word 262149


# Moving all of the cards in the donor column to a nonempty recipient column
.data
##### Deck #####
.align 2
deck:
.word 36  # list's size
.word node711033 # address of list's head
node735186:
.word 6574901
.word node665938
node140166:
.word 6574898
.word node99399
node122946:
.word 6574904
.word node271247
node99399:
.word 6574903
.word node781943
node641161:
.word 6574901
.word node135060
node837251:
.word 6574897
.word node877961
node907090:
.word 6574901
.word node157284
node726674:
.word 6574900
.word node798688
node711033:
.word 6574896
.word node501283
node821322:
.word 6574902
.word node111591
node969744:
.word 6574896
.word node140166
node829820:
.word 6574905
.word node907090
node135060:
.word 6574905
.word node969744
node501283:
.word 6574903
.word node726674
node699024:
.word 6574904
.word node988906
node665938:
.word 6574902
.word node641161
node157284:
.word 6574905
.word node789791
node789791:
.word 6574896
.word node122946
node696679:
.word 6574901
.word 0
node111591:
.word 6574900
.word node699024
node877961:
.word 6574897
.word node829820
node200967:
.word 6574899
.word node903207
node658577:
.word 6574905
.word node735186
node627847:
.word 6574899
.word node362816
node362816:
.word 6574900
.word node644315
node271247:
.word 6574897
.word node821322
node548211:
.word 6574896
.word node272784
node52160:
.word 6574902
.word node658577
node988906:
.word 6574901
.word node13320
node644315:
.word 6574900
.word node52160
node272784:
.word 6574899
.word node200967
node856721:
.word 6574898
.word node837251
node798688:
.word 6574897
.word node856721
node13320:
.word 6574904
.word node627847
node781943:
.word 6574903
.word node548211
node903207:
.word 6574905
.word node696679
##### Board #####
.data
.align 2
board:
.word card_list872818 card_list780529 card_list557800 card_list473891 card_list194398 card_list717800 card_list957954 card_list647197 card_list801727 
# column #6
.align 2
card_list957954:
.word 1  # list's size
.word node808078 # address of list's head
node808078:
.word 7689016
.word 0
# column #1
.align 2
card_list780529:
.word 2  # list's size
.word node171535 # address of list's head
node197661:
.word 7689016
.word 0
node171535:
.word 6574905
.word node197661
# column #8
.align 2
card_list801727:
.word 3  # list's size
.word node267325 # address of list's head
node376650:
.word 7689015
.word 0
node243265:
.word 7689016
.word node376650
node267325:
.word 6574896
.word node243265
# column #4
.align 2
card_list194398:
.word 1  # list's size
.word node245407 # address of list's head
node245407:
.word 7689015
.word 0
# column #2
.align 2
card_list557800:
.word 9  # list's size
.word node420772 # address of list's head
node671189:
.word 7689009
.word node347006
node529757:
.word 7689012
.word node123852
node673069:
.word 7689013
.word node529757
node951061:
.word 7689015
.word node57980
node57980:
.word 7689014
.word node673069
node420772:
.word 7689016
.word node951061
node123852:
.word 7689011
.word node351708
node347006:
.word 7689008
.word 0
node351708:
.word 7689010
.word node671189
# column #0
.align 2
card_list872818:
.word 5  # list's size
.word node128452 # address of list's head
node128580:
.word 6574902
.word node441100
node128452:
.word 6574905
.word node128580
node514375:
.word 7689009
.word 0
node441100:
.word 7689011
.word node13678
node13678:
.word 7689010
.word node514375
# column #5
.align 2
card_list717800:
.word 6  # list's size
.word node353202 # address of list's head
node274993:
.word 7689011
.word node170811
node110241:
.word 7689013
.word node930616
node170811:
.word 7689010
.word 0
node353202:
.word 7689015
.word node207896
node930616:
.word 7689012
.word node274993
node207896:
.word 7689014
.word node110241
# column #7
.align 2
card_list647197:
.word 6  # list's size
.word node573876 # address of list's head
node964793:
.word 7689012
.word node787957
node573876:
.word 6574902
.word node964793
node423622:
.word 7689009
.word node204171
node204171:
.word 7689008
.word 0
node958812:
.word 7689010
.word node423622
node787957:
.word 7689011
.word node958812
# column #3
.align 2
card_list473891:
.word 1  # list's size
.word node592201 # address of list's head
node592201:
.word 7689010
.word 0
##### Move #####
move: .word 393221


# Deal-move
.data
##### Deck #####
.align 2
deck:
.word 36  # list's size
.word node637399 # address of list's head
node865399:
.word 6574897
.word node755464
node637399:
.word 6574896
.word node326815
node10365:
.word 6574905
.word node372287
node742222:
.word 6574901
.word node415112
node32263:
.word 6574900
.word node411517
node990108:
.word 6574896
.word node950636
node944205:
.word 6574897
.word node849777
node411517:
.word 6574900
.word node278057
node515703:
.word 6574899
.word node32263
node402285:
.word 6574898
.word node621065
node570775:
.word 6574896
.word node402285
node806004:
.word 6574901
.word node124142
node675171:
.word 6574901
.word node10365
node983505:
.word 6574904
.word node546974
node372287:
.word 6574896
.word node983505
node591188:
.word 6574902
.word node902341
node278057:
.word 6574902
.word node668414
node902341:
.word 6574900
.word node290328
node621065:
.word 6574903
.word node45357
node668414:
.word 6574905
.word node187689
node187689:
.word 6574901
.word node509494
node546974:
.word 6574897
.word node591188
node849777:
.word 6574905
.word node675171
node675212:
.word 6574901
.word 0
node326815:
.word 6574903
.word node239383
node239383:
.word 6574900
.word node865399
node290328:
.word 6574904
.word node806004
node509494:
.word 6574902
.word node742222
node124142:
.word 6574904
.word node515703
node415112:
.word 6574905
.word node570775
node640354:
.word 6574905
.word node675212
node950636:
.word 6574899
.word node327089
node327089:
.word 6574899
.word node640354
node755464:
.word 6574898
.word node365701
node365701:
.word 6574897
.word node944205
node45357:
.word 6574903
.word node990108
##### Board #####
.data
.align 2
board:
.word card_list652504 card_list812016 card_list921683 card_list171864 card_list73675 card_list493365 card_list595505 card_list252786 card_list338789 
# column #0
.align 2
card_list652504:
.word 5  # list's size
.word node5197 # address of list's head
node749158:
.word 7689011
.word node12927
node12927:
.word 7689010
.word node564963
node732414:
.word 6574902
.word node749158
node5197:
.word 6574905
.word node732414
node564963:
.word 7689009
.word 0
# column #6
.align 2
card_list595505:
.word 1  # list's size
.word node82472 # address of list's head
node82472:
.word 7689016
.word 0
# column #3
.align 2
card_list171864:
.word 1  # list's size
.word node632686 # address of list's head
node632686:
.word 7689010
.word 0
# column #5
.align 2
card_list493365:
.word 6  # list's size
.word node515666 # address of list's head
node373743:
.word 7689013
.word node706753
node521908:
.word 7689010
.word 0
node618631:
.word 7689014
.word node373743
node706753:
.word 7689012
.word node273844
node515666:
.word 7689015
.word node618631
node273844:
.word 7689011
.word node521908
# column #1
.align 2
card_list812016:
.word 2  # list's size
.word node261157 # address of list's head
node261157:
.word 6574905
.word node737193
node737193:
.word 7689016
.word 0
# column #8
.align 2
card_list338789:
.word 3  # list's size
.word node647750 # address of list's head
node647750:
.word 6574896
.word node96168
node96168:
.word 7689016
.word node537141
node537141:
.word 7689015
.word 0
# column #4
.align 2
card_list73675:
.word 1  # list's size
.word node465042 # address of list's head
node465042:
.word 7689015
.word 0
# column #2
.align 2
card_list921683:
.word 9  # list's size
.word node868784 # address of list's head
node840120:
.word 7689014
.word node18420
node210500:
.word 7689008
.word 0
node18420:
.word 7689013
.word node353166
node353166:
.word 7689012
.word node220143
node868784:
.word 7689016
.word node866872
node870143:
.word 7689009
.word node210500
node866872:
.word 7689015
.word node840120
node220143:
.word 7689011
.word node569665
node569665:
.word 7689010
.word node870143
# column #7
.align 2
card_list252786:
.word 6  # list's size
.word node282115 # address of list's head
node294916:
.word 7689011
.word node800476
node244027:
.word 7689012
.word node294916
node800476:
.word 7689010
.word node718931
node718931:
.word 7689009
.word node80978
node80978:
.word 7689008
.word 0
node282115:
.word 6574902
.word node244027
##### Move #####
move: .word 16777216


