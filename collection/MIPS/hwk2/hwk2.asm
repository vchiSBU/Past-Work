# Vincent Chi
# vchi
# 112811026

############################ DO NOT CREATE A .data SECTION ############################
############################ DO NOT CREATE A .data SECTION ############################
############################ DO NOT CREATE A .data SECTION ############################

############################## Do not .include any files! #############################

.text
strlen:
    move $t2, $a0       # t2 has the string address
    li $t1, 0           # t1 holds the count

nextChLen:
    lb $t0, 0($t2)      # get a byte from string
    beqz $t0, strEndLen    # zero means end of string
    addi $t1, $t1, 1    # increment count
    addi $t2, $t2, 1    # move pointer one character
    j nextChLen         # go round the loop again

strEndLen:
    move $v0, $t1       # system call to print the length

    jr $ra              # end of strlen

index_of:
    add $a0, $a0, $a2
    move $t2, $a0       # t2 has the string address
    li $t1, 0           # t1 holds the index

nextChInd:
    lb $t0, 0($t2)              # get a byte from string
    beqz $t0, indexNotFoundz
    beq $t0, $a1, indexFound    # sees if char matches
    addi $t1, $t1, 1            # increment count
    addi $t2, $t2, 1            # move pointer one character
    j nextChInd                 # go round the loop again

indexNotFoundz:
    li $t1, -1

indexFound:
    move $v0, $t1       # system call to print the index

    jr $ra              # end of indexFound

to_lowercase:
    move $t2, $a0       # t2 has the string address
    li $t1, 0           # t1 holds the count

nextChToLower:
    lb $t0, 0($t2)      # get a byte from string
    beqz $t0, strEndTo  # zero means end of string

    li $t3, 'A'             # minimum ASCII value
	blt $t0, $t3, not_uppercase_letter 
	li $t3, 'Z'             # maximum ASCII value
	bgt $t0, $t3, not_uppercase_letter
    j is_uppercase_letter

not_uppercase_letter:
    addi $t2, $t2, 1    # move pointer one character
    j nextChToLower     # go round the loop again

is_uppercase_letter:
    addi $t0, $t0, 32   # making it lowercase
    addi $t2, $t2, 1    # move pointer one character
    addi $t1, $t1, 1    # uppercase letter counted
	j nextChToLower

strEndTo:
    move $v0, $t1       # system call to print the count

    jr $ra

generate_ciphertext_alphabet:
    sb $zero, 62($a0) 
    li $t2, 0           # initiate the counter for num of unique args
    move $t1, $a1       # t1 has the keyphrase

resetGen:
    move $t0, $a0       # t0 has the ciphertext alphabet
    lbu $t3, 0($t0)     # to traverse ciphertext alphabet
    lbu $t4, 0($t1)     # to traverse keyphrase
    beqz $t4, strEndGen     # zero means end of string

    li $t7, 0           # inner counter for num of unique args

generateLoop:
    beq $t7, $t2, addChar   # We're through all the unique characters

    li $t6, '0'             # check for alphanumeric
    blt $t4, $t6, goNext
    li $t6, '9'             # check for alphanumeric
    ble $t4, $t6, continue

    li $t6, 'A'             # check for alphanumeric
    blt $t4, $t6, goNext
    li $t6, 'Z'             # check for alphanumeric
    ble $t4, $t6, continue

    li $t6, 'a'             # check for alphanumeric
    blt $t4, $t6, goNext
    li $t6, 'z'             # check for alphanumeric
    ble $t4, $t6, continue

continue:
    beq $t3, $t4, goNext    # We found a duplicate
    addi $t0, $t0, 1        # go next character in ciphertext
    lbu $t3, 0($t0)         # to traverse ciphertext alphabet
    addi $t7, $t7, 1        # check the next character
    j generateLoop

addChar:
    sb $t4, 0($t0)          # stores the unique character in next available spot
    addi $t1, $t1, 1        # keyphrase also has to go to the next character
    addi $t2, $t2, 1        # there is now one more unique value
    j resetGen

goNext:
    addi $t1, $t1, 1    # keyphrase matched, go next letter
    j resetGen          # goes through the ciphertext to match keyphrase

strEndGen:
    addi $sp, $sp, -4
    sw $a0, 0($sp)
    move $v0, $t2       # system call to print the count

# now we need to add the rest of the characters

    lw $a0, 0($sp)
    move $t0, $a0           # reset ciphertext
    li $t8, 0               # temporary counter
getToJunk:
    beq $t8, $t2, addFillerlow
    addi $t0, $t0, 1        # go next character in ciphertext
    addi $t8, $t8, 1        # increment index until it matches where we need
    j getToJunk

# t0 has ciphertext at the proper place
# t2 has the number of characters
addFillerlow:
    li $t1, 'a'
    li $t3, 'z'

    addFillerLoop:
        li $t6, 62
        beq $t2, $t6, finishedPart4
        bgt $t1, $t3, addFillerCAPS

        # now find index of
index_of2:
    move $t8, $a0       # t8 has ciphertext
    li $t7, 0           # t7 is index

nextChInd2:
    beq $t7, $t2, indexNotFound2
    lbu $t5, 0($t8)               # get a byte from ciphertext
    beq $t5, $t1, indexFound2    # sees if char matches
    addi $t7, $t7, 1             # increment count
    addi $t8, $t8, 1             # move pointer one character
    j nextChInd2                 # go round the loop again

indexNotFound2:
    li $t7, -1

indexFound2: # $t7 has the index
        bgez $t7, nextLowerCase # lowercase letter was found
        sb $t1, 0($t0)
        addi $t0, $t0, 1
        addi $t2, $t2, 1
    
    nextLowerCase:
        addi $t1, $t1, 1
        j addFillerLoop
        
addFillerCAPS:
    li $t1, 'A'
    li $t3, 'Z'

    addFillerCAPSLoop:
        li $t6, 62
        beq $t2, $t6, finishedPart4
        bgt $t1, $t3, addFillerNumbers

        # now find index of
index_of3:
    move $t8, $a0       # t2 has the string address
    li $t7, 0           # t1 holds the index

nextChInd3:
    beq $t7, $t2, indexNotFound3
    lb $t5, 0($t8)               # get a byte from string
    beq $t5, $t1, indexFound3    # sees if char matches
    addi $t7, $t7, 1             # increment count
    addi $t8, $t8, 1             # move pointer one character
    j nextChInd3                 # go round the loop again

indexNotFound3:
    li $t7, -1

indexFound3: # $t7 has the index
        bgez $t7, nextUpperCase # lowercase letter was found
        sb $t1, 0($t0)
        addi $t0, $t0, 1
        addi $t2, $t2, 1
    
    nextUpperCase:
        addi $t1, $t1, 1
        j addFillerCAPSLoop

addFillerNumbers:
    li $t1, '0'
    li $t3, '9'

    addFillerNumbersLoop:
        li $t6, 62
        beq $t2, $t6, finishedPart4
        bgt $t1, $t3, finishedPart4

        # now find index of
index_of4:
    move $t8, $a0       # t2 has the string address
    li $t7, 0           # t1 holds the index

nextChInd4:
    beq $t7, $t2, indexNotFound4
    lb $t5, 0($t8)               # get a byte from string
    beq $t5, $t1, indexFound4    # sees if char matches
    addi $t7, $t7, 1             # increment count
    addi $t8, $t8, 1             # move pointer one character
    j nextChInd4                 # go round the loop again

indexNotFound4:
    li $t7, -1

indexFound4: # $t7 has the index
        bgez $t7, nextNumberCase # lowercase letter was found
        sb $t1, 0($t0)
        addi $t0, $t0, 1
        addi $t2, $t2, 1
    
    nextNumberCase:
        addi $t1, $t1, 1
        j addFillerNumbersLoop

finishedPart4:

    jr $ra

count_lowercase_letters:
    lb $t7, 0($a0)      # t0 has the count
    move $t2, $a1       # t2 has the string address

    li $t1, 25

makeAllZero:
    bltz $t1, nextChCountLower
    sb $zero, 0($t7)
    addi $t7, $t7, 1
    addi $t1, $t1, -1
    j makeAllZero

nextChCountLower:
    lb $t7, 0($a0)      # t0 has the count
    lb $t0, 0($t2)              # get a byte from string
    beqz $t0, strEndCountLower  # zero means end of string

    li $t3, 'a'             # minimum ASCII value
	blt $t0, $t3, not_lowercase_letter
	li $t3, 'z'             # maximum ASCII value
	bgt $t0, $t3, not_lowercase_letter
    j is_lowercase_letter

not_lowercase_letter:
    addi $t2, $t2, 1       # move pointer one character

is_lowercase_letter:
    li $t3, 'a'
    bne $t0, $t3, nota    # detected that it is not a
    li $t3, 0
    j changeCount

nota:
    li $t3, 'b'
    bne $t0, $t3, notb    # detected that it is not b
    li $t3, 1
    j changeCount

notb:
    li $t3, 'c'
    bne $t0, $t3, notc    # detected that it is not c
    li $t3, 2
    j changeCount

notc:
    li $t3, 'd'
    bne $t0, $t3, notd    # detected that it is not d
    li $t3, 3
    j changeCount

notd:
    li $t3, 'e'
    bne $t0, $t3, note    # detected that it is not e
    li $t3, 4
    j changeCount

note:
    li $t3, 'f'
    bne $t0, $t3, notf    # detected that it is not f
    li $t3, 5
    j changeCount

notf:
    li $t3, 'g'
    bne $t0, $t3, notg    # detected that it is not g
    li $t3, 6
    j changeCount

notg:
    li $t3, 'h'
    bne $t0, $t3, noth    # detected that it is not h
    li $t3, 7
    j changeCount

noth:
    li $t3, 'i'
    bne $t0, $t3, noti    # detected that it is not i
    li $t3, 8
    j changeCount

noti:
    li $t3, 'j'
    bne $t0, $t3, notj    # detected that it is not j
    li $t3, 9
    j changeCount

notj:
    li $t3, 'k'
    bne $t0, $t3, notk    # detected that it is not k
    li $t3, 10
    j changeCount

notk:
    li $t3, 'l'
    bne $t0, $t3, notl    # detected that it is not l
    li $t3, 11
    j changeCount

notl:
    li $t3, 'm'
    bne $t0, $t3, notm    # detected that it is not m
    li $t3, 12
    j changeCount

notm:
    li $t3, 'n'
    bne $t0, $t3, notn    # detected that it is not n
    li $t3, 13
    j changeCount

notn:
    li $t3, 'o'
    bne $t0, $t3, noto    # detected that it is not o
    li $t3, 14
    j changeCount

noto:
    li $t3, 'p'
    bne $t0, $t3, notp    # detected that it is not p
    li $t3, 15
    j changeCount

notp:
    li $t3, 'q'
    bne $t0, $t3, notq    # detected that it is not q
    li $t3, 16
    j changeCount

notq:
    li $t3, 'r'
    bne $t0, $t3, notr    # detected that it is not r
    li $t3, 17
    j changeCount

notr:
    li $t3, 's'
    bne $t0, $t3, nots    # detected that it is not s
    li $t3, 18
    j changeCount

nots:
    li $t3, 't'
    bne $t0, $t3, nott    # detected that it is not t
    li $t3, 19
    j changeCount

nott:
    li $t3, 'u'
    bne $t0, $t3, notu    # detected that it is not u
    li $t3, 20
    j changeCount

notu:
    li $t3, 'v'
    bne $t0, $t3, notv    # detected that it is not v
    li $t3, 21
    j changeCount

notv:
    li $t3, 'w'
    bne $t0, $t3, notw    # detected that it is not w
    li $t3, 22
    j changeCount

notw:
    li $t3, 'x'
    bne $t0, $t3, notx    # detected that it is not x
    li $t3, 23
    j changeCount

notx:
    li $t3, 'y'
    bne $t0, $t3, noty    # detected that it is not y
    li $t3, 24
    j changeCount

noty:
    li $t3, 25            # has to be z
    j changeCount

changeCount:
    move $t7, $a0
    beq $zero, $t3, foundLetterByte
    addi $t7, $t7, 1
    addi $t3, $t3, -1
    j changeCount

foundLetterByte:
    lb $t5, 0($t7)
    addi $t5, $t5, 1
    sb $t5, 0($t7)
    addi $t2, $t2, 1    # move pointer one character
    addi $t1, $t1, 1    # lowercase letter counted
	j nextChCountLower

strEndCountLower:
    move $v0, $t1       # system call to print the count

    jr $ra

sort_alphabet_by_count:
sb $zero, 26($a0)   # adds null terminator to sorted_alphabet

    li $t2, -1          # highest number
    li $t5, 0           # actual highest number index

    move $t0, $a0       # the string
    li $t8, 26
    li $t9, 1

resetCounts:
    move $t1, $a1       # counts[] array
    li $t2, -1
    li $t3, 0           # counts array index index

countLetLoop:
    lb $t9, 0($t0)
    beqz $t9, finishedPart5     # we've gone through all the string characters
    beq $t3, $t8, countEndCounts          # did we reach the end of counts?

    lb $t4, 0($t1)                      # loads first byte of counts array
    bgt $t4, $t2, changeHighestNumber   # did we find a greater number?
    addi $t1, $t1, 4                    # go to the next number in counts
    addi $t3, $t3, 1                    # we are currently on the next index
    j countLetLoop

changeHighestNumber:
    move $t2, $t4       # t2 now has the most recent highest number
    move $t5, $t3       # t5 now has the most recent highest number index
    addi $t1, $t1, 4                    # go to the next number in counts
    addi $t3, $t3, 1                    # we are currently on the next index
    j countLetLoop

countEndCounts:
    addi $t9, $t9, 1

    li $t7, 4
    mul $t5, $t5, $t7
    add $t5, $t5, $a1   # gives the address of the highest number

    li $t6, -1          # value used only for the next line
    sw $t6, 0($t5)      # makes sure this highest number won't be re-iterated

    sub $t5, $t5, $a1
    div $t5, $t7
    mflo $t5

    addi $t5, $t5, 'a'  # gives me ascii character code for most occuring letter
    sb $t5, 0($t0)      # stores the ascii character in the element
    addi $t0, $t0, 1    # gives the next character for string to replace
    j resetCounts

finishedPart5:
    jr $ra

generate_plaintext_alphabet:
    sb $zero, 62($a0)   # adds a null terminator

    move $t0, $a0         # stores t0 as the plaintext alphabet

    li $t7, 7           # there's 8 characters that have the special property

    li $t6, 'a'         # I will use t6 to find characters

resetThisLoop:
    li $t5, 0           # index
    lbu $t3, 0($t0)     # t3 holds the pointer reference to plaintext
    li $t7, 7           # there's 8 characters that have the special property
    move $t1, $a1       # stores t1 as the sorted alphabet

loopSortedForLet:
    lbu $t4, 0($t1)     # t4 holds the pointer reference to sorted alphabet
    beq $t4, $t6, weFounda   # did we find a?
    addi $t5, $t5, 1    # push index forward
    addi $t1, $t1, 1    # pushes sorted alphabet forward
    j loopSortedForLet

weFounda:
    bgt $t5, $t7, justAdd1Let   # add normally
    sub $t5, $t7, $t5       # we get the number of extra characters we add
    addi $t5, $t5, 2        # we get the number of a's that we need

addMultipleLet:
    beqz $t5, FinishedSortingALet# this is when we've already added all the char
    sb $t6, 0($t0)              # store a single a
    addi $t0, $t0, 1            # move plaintext forward
    addi $t5, $t5, -1           # counter - 1
    j addMultipleLet

justAdd1Let:
    sb $t6, 0($t0)              # stores a single a
    addi $t0, $t0, 1            # move plaintext forward
    j FinishedSortingALet

FinishedSortingALet:
    li $t7, 'z'
    beq $t6, $t7, finishedPart7
    addi $t6, $t6, 1
    j resetThisLoop

finishedPart7:
    jr $ra

encrypt_letter:
    move $t0, $a0 # t0 has the plaintext letter
    move $t1, $a1 # t1 has the letter index
    move $t2, $a2 # t2 has the plaintext alphabet
    move $t3, $a3 # t3 has the ciphertext

    li $t4, 0 # the index count
    li $t8, 1 # the number to mod
    index_ofTheLetter:

nextChInd5:
    lb $t5, 0($t2)               # get a byte from string
    beq $t5, $t0, indexFound5    # sees if char matches
    addi $t4, $t4, 1             # increment count
    addi $t2, $t2, 1             # move pointer one character
    j nextChInd5                 # go round the loop again

indexFound5: # $t4 has the index
    addi $t2, $t2, 1
    lb $t5, 0($t2)               # get a byte from string
    bne $t5, $t0, finishedIndex  # sees if char matches
    addi $t8, $t8, 1             # increment count
    j indexFound5                # go round the loop again

finishedIndex:
    div $t1, $t8
    mfhi $t1

    add $t4, $t4, $t1
loopForCharacter:
    lb $t5, 0($t3)
    beqz $t4, finishedPart8
    addi $t3, $t3, 1    # go to the next character
    addi $t4, $t4, -1
    j loopForCharacter

finishedPart8:
    move $v0, $t5

    jr $ra

encrypt:
    move $t0, $a1
    li $t1, 0 # counter of lowercase

returnLower:
    lbu $t2, 0($t0)
    beqz $t2, exitPart8
    li $t3, 'a'
    blt $t2, $t3, continueCount1
    li $t3, 'z'
    bgt $t2, $t3, continueCount1
    addi $t1, $t1, 1
    addi $t0, $t0, 1
    j returnLower

continueCount1:
    addi $t0, $t0, 1
    j returnLower

exitPart8:
    move $v0, $t1

    jr $ra

decrypt:
    move $t0, $a2
    li $t1, 0 # counter of lowercase

returnLower1:
    lbu $t2, 0($t0)
    beqz $t2, exitPart9
    li $t3, 'a'
    blt $t2, $t3, continueCount2
    li $t3, 'z'
    bgt $t2, $t3, continueCount2
    addi $t1, $t1, 1
    addi $t0, $t0, 1
    j returnLower1

continueCount2:
    addi $t0, $t0, 1
    j returnLower1

exitPart9:
    move $v0, $t1

    jr $ra

############################## Do not .include any files! #############################

############################ DO NOT CREATE A .data SECTION ############################
############################ DO NOT CREATE A .data SECTION ############################
############################ DO NOT CREATE A .data SECTION ############################
