# Simulate game01.txt - results in a win
.data
filename: .asciiz "game01.txt"
### Deck ###
# Garbage values
deck: .word 24259929 51331435
### Board ###
# Garbage values
.data
.align 2
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


# Simulate game02.txt - results in a win
.data
filename: .asciiz "game02.txt"
### Deck ###
# Garbage values
deck: .word 77626828 25487147
### Board ###
# Garbage values
.data
.align 2
board:
.word card_list547011 card_list216912 card_list669785 card_list848653 card_list417583 card_list677543 card_list718104 card_list835157 card_list933336 
# column #1
.align 2
card_list216912:
.word 840431  # list's size
.word 506422 # address of list's head
# column #7
.align 2
card_list835157:
.word 564679  # list's size
.word 669362 # address of list's head
# column #3
.align 2
card_list848653:
.word 552679  # list's size
.word 592251 # address of list's head
# column #0
.align 2
card_list547011:
.word 319918  # list's size
.word 360147 # address of list's head
# column #2
.align 2
card_list669785:
.word 861167  # list's size
.word 638481 # address of list's head
# column #4
.align 2
card_list417583:
.word 330578  # list's size
.word 13158 # address of list's head
# column #5
.align 2
card_list677543:
.word 936317  # list's size
.word 806648 # address of list's head
# column #8
.align 2
card_list933336:
.word 699042  # list's size
.word 625481 # address of list's head
# column #6
.align 2
card_list718104:
.word 537660  # list's size
.word 455488 # address of list's head
# Garbage values
moves: .ascii "c8I7tSbnRcj2PHgTd1AZU4ENyvQlPQzBQRgfcnjQZPiYTQLtxGATqsA2lIH2Q7Jf27a4LMTjHWM8QMgD6PpOZ0JEbxsZWDxPVs1IWKLPYvmkcxdLgFZxWAQl5gQNeoKyiGRTgW7F7HWo4OYHFvu8MO2AY55WPrvRElpgUT1dSHTXjx7cijZPkRRzVZlXJ4pG8PlXFGQaEjrwRGOCoeBV24EzudOB3ASfuCDahcTwxuXpSJSR6JEUX0LSvQocliPCm0R1EBO1aw8P7ir97wItRewnYdhJiHaMFGAzTFeZmlwovSAVFhzewG8ygmqfShxlmf3eB0PP6C7UB8CTcAdg7t8Gzy12UvxwevMlhbCzGuc0nZsuSsjuMExoIW3cNE1jnvpSEJo2t6XkmDEYvEOCDZ6rBU6sfPz3Dg63N2uyKKNHioXdkSAYGCRNrMpXsl6Hp6SAZVfLyJexDSO7ikwSLii99ZtAjkDrNoN0msmLMdW3t77XmNCblkXvNQZkucgpcwnfl6DBlgJHdMQpPgA5jpRtkCWiLxVz9bNFtBBUMk6K"


# Simulate game03.txt - results in a win (some invalid moves in the moves[] array)
.data
filename: .asciiz "game03.txt"
### Deck ###
# Garbage values
deck: .word 19298388 25838983
### Board ###
# Garbage values
.data
.align 2
board:
.word card_list390186 card_list780261 card_list921603 card_list794887 card_list563648 card_list958108 card_list960311 card_list876269 card_list132614 
# column #7
.align 2
card_list876269:
.word 305340  # list's size
.word 813835 # address of list's head
# column #0
.align 2
card_list390186:
.word 712038  # list's size
.word 150979 # address of list's head
# column #2
.align 2
card_list921603:
.word 82184  # list's size
.word 864821 # address of list's head
# column #1
.align 2
card_list780261:
.word 701247  # list's size
.word 246378 # address of list's head
# column #8
.align 2
card_list132614:
.word 408168  # list's size
.word 386388 # address of list's head
# column #6
.align 2
card_list960311:
.word 687795  # list's size
.word 809975 # address of list's head
# column #5
.align 2
card_list958108:
.word 321036  # list's size
.word 153239 # address of list's head
# column #4
.align 2
card_list563648:
.word 543893  # list's size
.word 406018 # address of list's head
# column #3
.align 2
card_list794887:
.word 658005  # list's size
.word 59936 # address of list's head
# Garbage values
moves: .ascii "HkoF5VhgtOlSbFUXO7QzoJOZoYNB6T3eYrqJtrp9jNnmaQT5fAGtFelDuGeBItgWCObjqviCZVUD2thSFEwx2how97SqrKHfgaPTwx1CCyjlplPRvnUCWj0XRJpVZBxykqKx14XzISBRPaT6oEoRMoj9MwCZTNuTaPDvDQdpbqiZrlFlQXP6kpHilPrYzJEdyKAqYSQuYieoVXCPt5f6xk9Ar8XDIVENcdpjDXBogHFc62N1N6Yx2i8mobS9eeGIGEIOFsO7muZzZOPmHNn0mcQRH4mO3tr3EsiI0zuipje8xOo9xgNC2dTWbxNW2KcPNz9UXVvPgkOm0X930tPApCLOtmLvs7ELSXRq6OFxGLxkDFHePijOBVdQxzRFPnnvbnPok3NiqpBi6LGyyVm6aeVOL9TM5o96Qkpd3FvvnRzzJ96eItPXy8Sl1KBluowIULLRclWBOvXDYThbFbN7SdzekT8givPm4qpmWpCbceGnEvJiSkV9FVELQNphBgDeQVw23Q4e"


# Simulate game04.txt - results in a loss
.data
filename: .asciiz "game04.txt"
### Deck ###
# Garbage values
deck: .word 19159058 60556872
### Board ###
# Garbage values
.data
.align 2
board:
.word card_list541949 card_list144045 card_list109868 card_list386926 card_list597883 card_list284952 card_list255055 card_list337702 card_list45115 
# column #7
.align 2
card_list337702:
.word 213147  # list's size
.word 929558 # address of list's head
# column #2
.align 2
card_list109868:
.word 360261  # list's size
.word 524417 # address of list's head
# column #0
.align 2
card_list541949:
.word 340637  # list's size
.word 913724 # address of list's head
# column #5
.align 2
card_list284952:
.word 356601  # list's size
.word 97368 # address of list's head
# column #1
.align 2
card_list144045:
.word 539723  # list's size
.word 583615 # address of list's head
# column #4
.align 2
card_list597883:
.word 235830  # list's size
.word 936833 # address of list's head
# column #6
.align 2
card_list255055:
.word 974983  # list's size
.word 530896 # address of list's head
# column #3
.align 2
card_list386926:
.word 571954  # list's size
.word 761609 # address of list's head
# column #8
.align 2
card_list45115:
.word 277400  # list's size
.word 417512 # address of list's head
# Garbage values
moves: .ascii "f3rXNtgppaRqx6x4hpG6taZeSVTrfXQSHPYHzpx2v6D3NnJBFceYXd1gg5EzmH1SHTVa6JUQn9wU5ji9S24KkN3LPSt2qe783Cb3fr2GeqAQUZQDvhiDQiYN6I7MNtIVJ5u4FOP37K8skmXoYPDuefE43pCzpSytuIW6IT8rQ4JLJUbUHgCRiiE4Bi9QDU9h34riZpfgN91L7sviu7RBsfp63KVd4HzxBX0Ocq32osDQInDenn3RkG3Rtiulsfzw0pA8U0CWkasGNa2ToCBk0sttX9XdU5p4Coa2cxs1j4B51VQ14KemWD1kb0Jjhjl9YJ2J6I1Had4fpD8EQ089X1HGwlSA3Fgb2SMqn5OyMOvVGKbIllm5sYlFbz2iuNFY5IDUs1jZhXoZLESu4e4nxQUbntF99QAcW2WT05M0W89EDon2yhKJMywgPmmcoHX1P2ZXH7VmlqAsWQVRlLgatJqBQfauQzA04PK2wKt9DX9Fyj9VXl8f6BRfxn5UdS21a6AlMP77g"


