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
    move $a0, $t1       # system call to print the length
    li $v0, 1           # indicates an integer
    syscall

    jr $ra              # end of strlen

index_of:
    move $t2, $a0       # t2 has the string address
    li $t1, 0           # t1 holds the index

nextChInd:
    lb $t0, 0($t2)              # get a byte from string
    beq $t0, $a1, indexFound    # sees if char matches
    addi $t1, $t1, 1            # increment count
    addi $t2, $t2, 1            # move pointer one character
    j nextChInd                 # go round the loop again

indexFound:
    move $a0, $t1       # system call to print the index
    li $v0, 1           # indicates an integer
    syscall

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
    move $a0, $t1       # system call to print the count
    li $v0, 1           # indicates an integer
    syscall

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
    move $a0, $t2       # system call to print the count
    li $v0, 1           # indicates an integer
    syscall

    jr $ra

count_lowercase_letters:
    lw $t7, $a0         # t0 has the count
    move $t2, $a1       # t2 has the string address
    li $t1, 0           # t1 holds the count

nextChCountLower:
    lb $t0, 0($t2)              # get a byte from string
    beqz $t0, strEndCountLower  # zero means end of string

    li $t3, 'a'             # minimum ASCII value
	blt $t0, $t3, not_lowercase_letter 
	li $t3, 'z'             # maximum ASCII value
	bgt $t0, $t3, not_lowercase_letter
    j is_lowercase_letter

not_lowercase_letter:
    addi $t2, $t2, 1       # move pointer one character
    j nextChCountLower     # go round the loop again

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
    beq $zero, $t3, foundLetterByte

foundLetterByte:
    

    addi $t2, $t2, 1    # move pointer one character
    addi $t1, $t1, 1    # lowercase letter counted
	j nextChCountLower

strEndCountLower:
    move $a0, $t1       # system call to print the count
    li $v0, 1           # indicates an integer
    syscall

    jr $ra

sort_alphabet_by_count:
    jr $ra

generate_plaintext_alphabet:
    jr $ra

encrypt_letter:
    jr $ra

encrypt:
    jr $ra

decrypt:
    jr $ra

############################## Do not .include any files! #############################

############################ DO NOT CREATE A .data SECTION ############################
############################ DO NOT CREATE A .data SECTION ############################
############################ DO NOT CREATE A .data SECTION ############################
