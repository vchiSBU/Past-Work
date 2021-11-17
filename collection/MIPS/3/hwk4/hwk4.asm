# erase this line and type your first and last name here in a comment
# erase this line and type your Net ID here in a comment (e.g., jmsmith)
# erase this line and type your SBU ID number here in a comment (e.g., 111234567)

############################ DO NOT CREATE A .data SECTION ############################
############################ DO NOT CREATE A .data SECTION ############################
############################ DO NOT CREATE A .data SECTION ############################

.text
memcpy:
    beqz $a2, returns_neg_one_if_n_less_or_equal_zero
    bltz $a2, returns_neg_one_if_n_less_or_equal_zero

    move $t0, $a1           # t0: source
    move $t1, $a0           # t1: dest
    move $t8, $a2           # t8: counter. has the number of bytes to copy

    move_one_character_to_dest:
        beqz $t8, memcpy_finished
        addi $t8, $t8, -1       # Decrement counter

        lbu $t2, 0($t0)         # t2: first byte of source

        sb $t2, 0($t1)          # Move byte to Destination
        addi $t0, $t0, 1        # Move the source forward
        addi $t1, $t1, 1        # Move the destination forward
    
        j move_one_character_to_dest

    returns_neg_one_if_n_less_or_equal_zero:
        li $v0, -1              # Returns negative one.
        jr $ra

    memcpy_finished:
        move $v0, $a2           # Specified desired return value.
        jr $ra

strcmp:
    move $t0, $a0           # t0: string 1
    move $t1, $a1           # t1: string 2

    lbu $t2, 0($t0)         # t2: first byte of string 1
    lbu $t3, 0($t1)         # t3: first byte of string 2
    
    beqz $t2, return_length_of_string2
    beqz $t3, return_length_of_string1

    strcmp_loop:
        lbu $t2, 0($t0)         # t2: first byte of string 1
        lbu $t3, 0($t1)         # t3: first byte of string 2

        beqz $t2, string1_end_reached
        beqz $t3, string2_end_reached

        addi $t0, $t0, 1        # go to the next character
        addi $t1, $t1, 1        # go to the next character
        beq $t2, $t3, strcmp_loop

        # the two characters are not equal:
        sub $t8, $t2, $t3   # str1[n] - str2[n]
        move $v0, $t8       # return the value
        jr $ra

    string1_end_reached:
        beqz $t3, strings_are_equal
        sub $t8, $t2, $t3   # str1[n] - str2[n]
        move $v0, $t8       # return the value
        jr $ra

    string2_end_reached:
        move $v0, $t2       # the first character minus zero
        jr $ra

    strings_are_equal:
        li $v0, 0           # return zero if they are equal
        jr $ra

    return_length_of_string2:
        li $t8, 0           # t8 is the count of characters

        string2_loop:
            lbu $t3, 0($t1)         # t3: first byte of string 2
            beqz $t3, return_t8
            # else
            addi $t1, $t1, 1
            addi $t8, $t8, -1
            j string2_loop
        
        return_t8:
            move $v0, $t8
            jr $ra
    return_length_of_string1:
        li $t8, 0           # t8 is the count of characters

        string1_loop:
            lbu $t3, 0($t0)         # t3: first byte of string 2
            beqz $t3, return_t8
            # else
            addi $t0, $t0, 1
            addi $t8, $t8, 1
            j string1_loop

initialize_hashtable:
    move $t0, $a0           # t0: hashtable
    move $t1, $a1           # t1: capacity
    move $t2, $a2           # t2: element size

    bltz $t1, return_neg_one_if_capacity_or_element_size_less_than_zero
    bltz $t2, return_neg_one_if_capacity_or_element_size_less_than_zero

    sw $t1, 0($t0)          # Stores capacity in Hashtable
    addi $t0, $t0, 4        # Moves to size in Hashtable

    li $t8, 0               # Need to store zero as the size
    sw $t8, 0($t0)          # Stores size zero in Hashtable
    addi $t0, $t0, 4        # Moves to element size in Hashtable

    sw $t2, 0($t0)          # Stores the element size in Hashtable
    addi $t0, $t0, 4        # Moves to the first element byte

    mult $t1, $t2           # capacity * element_size bytes to be filled
    mflo $t1                # t1: capacity * element_size counter
    
    fill_elements_with_zero_loop:
    beqz $t1, finished_setting_all_zeros
    sw $t8, 0($t0)          # Store zero as the element
    addi $t0, $t0, 4        # Move to the next element
    addi $t1, $t1, -1       # Decrement counter
    j fill_elements_with_zero_loop

    finished_setting_all_zeros:
    li $v0, 0               # Return 0 if we succeeded
    jr $ra

    return_neg_one_if_capacity_or_element_size_less_than_zero:
    li $v0, -1              # Return negative one if we failed
    jr $ra

hash_book:
    move $t0, $a0           # t0: the book hashtable
    move $t1, $a1           # t1: the 13 character string

    lw $t2, 0($t0)          # t2: the capacity word loaded
    li $t8, 0               # t8: the sum

    hash_book_loop:
        lbu $t3, 0($t1)         # t3: the first byte of the 13 character string
        beqz $t3, hash_book_add_finished
        add $t8, $t8, $t3       # Add the numerical value to the sum
        addi $t1, $t1, 1        # Move the string forward for the next character
        j hash_book_loop
    
    hash_book_add_finished:
        div $t8, $t2            # Divide to get remainder
        mfhi $t7                  # Remainder to return
        move $v0, $t7
        jr $ra                  # Returns the desired value

get_book:
    addi $sp, $sp, -28          # Make room for the books
    sw $s0, 24($sp)             # Make sure we're not tampering with s registers
    sw $s1, 20($sp)
    sw $s2, 16($sp)
    sw $s3, 12($sp)
    sw $s4, 8($sp)
    sw $s5, 4($sp)
    sw $ra, 0($sp)              # Our return call is saved

    li $s0, 0                   # index
    move $s1, $a0               # s1: books
    move $s2, $a1               # s2: isbn
    lw $s3, 0($a0)              # s3: the number of books
    lw $s4, 8($a0)              # s4: element size

    li $s5, 1               # s5: counter

    jal hash_book               # Get the index to look at in $v0
    lw $ra, 0($sp)

    move $s0, $v0               # s0: the index we're looking at
    mul $t0, $s4, $v0           # This is the number of elements before we reach that index
    addi $s1, $s1, 12           # We are at the first index element

    add $s1, $s1, $t0

    check_index_isbn:
        lbu $t0, 0($s1)         # The first byte
        li $t1, '9'             # To compare
        beq $t0, $t1, do_the_strcmp
        beqz $t0, empty_book_case
        bltz $t0, keep_PROBING
        # QUESTION: what to do here if it isn't those three values
    empty_book_case:
        li $v0, -1
        li $v1, 1

        lw $s0, 24($sp)             # Make sure we're not tampering with s registers
        lw $s1, 20($sp)
        lw $s2, 16($sp)
        lw $s3, 12($sp)
        lw $s4, 8($sp)
        lw $s5, 4($sp)
        addi $sp, $sp, 28           # Reset
        jr $ra
        # QUESTION: they had examples where there was an empty element but others existed
    do_the_strcmp:
        # QUESTION: a0 in stack to save it?
        move $a0, $s1           # get a0 to the current string

        jal strcmp              # We've compared the isbn's at that index
        lw $ra, 0($sp)
        beqz $v0, we_found_book
        j keep_PROBING
    # otherwise, do linear probing

    keep_PROBING:
        li $s5, 0
    keep_PROBING_loop:
        addi $s0, $s0, 1        # go to the next element
        addi $s5, $s5, 1        # we've accounted for an element
        beq $s0, $s3, start_from_beginning
        beq $s5, $s3, no_books_left

        move $t6, $s4           # t6: the element size

        get_to_next_isbn:
            beqz $t6, strcmp_this_isbn
            addi $t6, $t6, -1       # We're not there yet
            addi $s1, $s1, 1        # Go to the next element
            j get_to_next_isbn

        
        j keep_PROBING_loop

        strcmp_this_isbn:
            move $a0, $s1       # get a0 to the current string
            jal strcmp          # Comparing the next isbn
            lw $ra, 0($sp)
            beqz $v0, we_found_book
            j keep_PROBING_loop
    
    start_from_beginning:
        mul $t0, $s3, $s4       # The number of elements to go back to the beginning
        sub $t0, $t0, $s4       # We're only at the beginning of the last book
        sub $s1, $s1, $t0       # Subtract s1 hashtable back to the start
        li $s0, 0               # index
        j keep_PROBING_loop

    we_found_book:
        move $v0, $s0
        move $v1, $s5

        lw $s0, 24($sp)             # Make sure we're not tampering with s registers
        lw $s1, 20($sp)
        lw $s2, 16($sp)
        lw $s3, 12($sp)
        lw $s4, 8($sp)
        lw $s5, 4($sp)
        addi $sp, $sp, 28           # Reset
        jr $ra

    no_books_left:          
        li $v0, -1              # Return -1 if not found
        move $v1, $s5           # Return number checked

        lw $s0, 24($sp)             # Make sure we're not tampering with s registers
        lw $s1, 20($sp)
        lw $s2, 16($sp)
        lw $s3, 12($sp)
        lw $s4, 8($sp)
        lw $s5, 4($sp)
        addi $sp, $sp, 28           # Reset
        jr $ra

add_book:
    addi $sp, $sp, -36          # Make room for the books
    sw $s0, 32($sp)             # Make sure we're not tampering with s registers
    sw $s1, 28($sp)
    sw $s2, 24($sp)
    sw $s3, 20($sp)
    sw $s4, 16($sp)
    sw $s5, 12($sp)
    sw $s6, 8($sp)
    sw $s7, 4($sp)
    sw $ra, 0($sp)              # Our return call is saved

    li $s0, 0                   # s0: index
    move $s1, $a0               # s1: books
    move $s2, $a1               # s2: isbn
    lw $s3, 0($a0)              # s3: the number of books
    lw $s4, 8($a0)              # s4: element size
    move $s5, $a2               # s5: title
    move $s6, $a3               # s6: author
    lw $s7, 4($a0)              # s7: size

    bne $s7, $s3, hashtable_has_space
    li $v0, -1                  # Return (-1, -1) if hashtable full
    li $v1, -1
    jr $ra

    hashtable_has_space:
        jal get_book
        lw $ra, 0($sp)
        bltz $v0, no_book_of_that_isbn
        jr $ra      # "if isbn exists, returns the values of get_book"

    no_book_of_that_isbn:
        move $a0, $s1
        jal hash_book               # Get the index to look at in $v0
        lw $ra, 0($sp)

        move $s0, $v0               # s0: the index we're looking at
        mul $t0, $s4, $v0           # This is the number of elements before we reach that index
        addi $s1, $s1, 12           # We are at the first index element

    add_add_till_index:
        beqz $t0, add_index_isbn
        addi $t0, $t0, -1       # We're not there yet
        addi $s1, $s1, 1        # Go to the next element

        j add_add_till_index

    add_index_isbn:
        move $v0, $s0           # move index to v0
        li $v1, 0               # this is the first entry we're looking at
        addi $s7, $s7, 1        # size increment by 1

        lbu $t0, 0($s1)         # check if this part of the hashtable has a book
        li $t1, '9'
        beq $t0, $t1, have_to_linear_probe      # have to linear probe until we find a space

        move $a0, $s1           # dest
        move $a1, $s2           # source (isbn)
        li $a2, 14              # copy thirteen bytes and null terminator
        jal memcpy              # copies the isbn into the hashtable
        lw $ra, 0($sp)

        addi $s1, $s1, 14       # we move to where the title should be
        move $a0, $s1           # dest
        move $a1, $s5           # source (title)
        li $a2, 25              # memory space and null terminator
        jal memcpy
        lw $ra, 0($sp)

        addi $s1, $s1, 25
        move $a0, $s1           # dest
        move $a1, $s6           # source (author)
        li $a2, 25              # memory space and null terminator
        jal memcpy
        lw $ra, 0($sp)

        addi $s1, $s1, 25
        sw $zero, 0($s1)

        move $v0, $s0

        lw $s0, 32($sp)             # Make sure we're not tampering with s registers
        lw $s1, 28($sp)
        lw $s2, 24($sp)
        lw $s3, 20($sp)
        lw $s4, 16($sp)
        lw $s5, 12($sp)
        lw $s6, 8($sp)
        lw $s7, 4($sp)
        addi $sp, $sp, 36          # Make room for the books
        jr $ra

    add_index_isbn_reset_s7:
        move $v0, $s0           # move index to v0
        move $v1, $s7           # this is the counter
        lw $s7, 4($s1)          # Make sure s7 is size moving forward
        addi $s7, $s7, 1        # size increment by 1

        lbu $t0, 0($s1)         # check if this part of the hashtable has a book
        li $t1, '9'
        beq $t0, $t1, have_to_linear_probe      # have to linear probe until we find a space

        move $a0, $s1           # dest
        move $a1, $s2           # source (isbn)
        li $a2, 14              # copy thirteen bytes and null terminator
        jal memcpy              # copies the isbn into the hashtable
        lw $ra, 0($sp)

        addi $s1, $s1, 14       # we move to where the title should be
        move $a0, $s1           # dest
        move $a1, $s5           # source (title)
        li $a2, 25              # memory space and null terminator
        jal memcpy
        lw $ra, 0($sp)

        addi $s1, $s1, 25
        move $a0, $s1           # dest
        move $a1, $s6           # source (author)
        li $a2, 25              # memory space and null terminator
        jal memcpy
        lw $ra, 0($sp)

        addi $s1, $s1, 25
        sw $zero, 0($s1)

        move $v0, $s0

        lw $s0, 32($sp)             # Make sure we're not tampering with s registers
        lw $s1, 28($sp)
        lw $s2, 24($sp)
        lw $s3, 20($sp)
        lw $s4, 16($sp)
        lw $s5, 12($sp)
        lw $s6, 8($sp)
        lw $s7, 4($sp)
        addi $sp, $sp, 36          # Make room for the books
        jr $ra

    have_to_linear_probe:
        li $s7, 0               # s7 is counter. if I add 4 to s3 at the end, I'll get size

    add_PROBING_loop:
        addi $s0, $s0, 1        # go to the next element
        addi $s7, $s7, 1        # we've accounted for an element
        beq $s7, $s3, add_no_books_left
        beq $s0, $s3, add_start_from_beginning

        move $t6, $s4           # t6: the element size

        add_get_to_next_isbn:
            beqz $t6, see_if_open_space
            addi $t6, $t6, -1       # We're not there yet
            addi $s1, $s1, 1        # Go to the next element
            j add_get_to_next_isbn

        see_if_open_space:
            lbu $t0, 0($s1)
            li $t1, -1
            beq $t0, $t1, add_index_isbn_reset_s7
            li $t1, 0
            beq $t0, $t1, add_index_isbn_reset_s7
            j add_PROBING_loop
    
    add_start_from_beginning:
        mul $t0, $s3, $s4       # The number of elements to go back to the beginning
        sub $t0, $t0, $s4       # We're only at the beginning of the last book
        sub $s1, $s1, $t0       # Subtract s1 hashtable back to the start
        li $s0, 0               # index
        j add_PROBING_loop

    add_no_books_left:          
        li $v0, -1              # Return -1 if not found
        move $v1, $s7           # Return number checked

        lw $s0, 32($sp)             # Make sure we're not tampering with s registers
        lw $s1, 28($sp)
        lw $s2, 24($sp)
        lw $s3, 20($sp)
        lw $s4, 16($sp)
        lw $s5, 12($sp)
        lw $s6, 8($sp)
        lw $s7, 4($sp)
        addi $sp, $sp, 36          # Make room for the books
        jr $ra

delete_book:
    addi $sp, $sp, -24          # Make room for the books
    sw $s0, 20($sp)             # Make sure we're not tampering with s registers
    sw $s1, 16($sp)
    sw $s2, 12($sp)
    sw $s3, 8($sp)
    sw $s4, 4($sp)
    sw $ra, 0($sp)              # Our return call is saved

    move $s0, $a0               # s0: books
    move $s1, $a1               # s1: isbn
    lw $s3, 0($a0)              # s3: the number of books
    lw $s4, 8($a0)              # s4: element size
    jal get_book
    lw $ra, 0($sp)              # Our return call is saved

    bltz $v0, book_not_found
    j book_found
    book_not_found:
        lw $s0, 20($sp)             # Make sure we're not tampering with s registers
        lw $s1, 16($sp)
        lw $s2, 12($sp)
        lw $s3, 8($sp)
        lw $s4, 4($sp)
        addi $sp, $sp, 24           # Make room for the books

        jr $ra                  # value of -1 is already in v0
    book_found: # v0 will be the index
        addi $s1, $s1, 12       # we are at the first isbn
        mul $t0, $v0, $s4       # the number of elements to reach that index
        add $s1, $s1, $t0       # we're at the index to delete

    delete_loop:
        li $t0, -1              # replace every value with -1
        sb $t0, 0($s1)          # store the -1
        addi $s1, $s1, 1
        addi $s4, $s4, -1       # go to every character
        bgtz $s4, delete_loop
    # we're done with the loop here
    lbu $t0, 4($s0)
    addi $t0, $t0, -1
        lw $s0, 20($sp)             # Make sure we're not tampering with s registers
        lw $s1, 16($sp)
        lw $s2, 12($sp)
        lw $s3, 8($sp)
        lw $s4, 4($sp)
        addi $sp, $sp, 24           # Make room for the books

        jr $ra                  # v0 already had the index value

hash_booksale:
    move $t0, $a0               # t0: books
    move $t1, $a1               # t1: isbn
    move $t2, $a2               # t2: customer id

    lb $t3, 0($t0)              # t3: capacity
    li $t4, 0                   # sum of isbn and customer_id

    sum_loop:
        lb $t8, 0($t1)              # first character of isbn
        beqz $t8, sum_customer_id_now
        add $t4, $t4, $t8           # adding the character to the sum
        addi $t1, $t1, 1            # going to the next character
        j sum_loop

    sum_customer_id_now:
        li $t0, 10
        div $t2, $t0
        mfhi $t8
        mflo $t2
        add $t4, $t4, $t8
        beqz $t2, sum_done
        j sum_customer_id_now

    sum_done:
        div $t4, $t3                # mod to return
        mfhi $t0

        move $v0, $t0
        jr $ra

is_leap_year:
    move $t0, $a0               # a0: year
    li $t1, 1582
    blt $t0, $t1, return_zero

    li $t1, 4
    div $t0, $t1                # get the modulus
    mfhi $t8

    beqz $t8, check_if_divisible_by_400
    j years_negated_till_next_leap_year

    check_if_divisible_by_400:
        li $t1, 100
        div $t0, $t1                # get the modulus
        mfhi $t8

        bnez $t8, return_one
        li $t1, 400
        div $t0, $t1                # get the modulus
        mfhi $t8

        bnez $t8, return_neg_four
        j return_one

    years_negated_till_next_leap_year:
        sub $t7, $t1, $t8           # t7 is the number of years till next leap year
        add $t0, $t0, $t7           # t0 is supposed to be the next leap year

        check_potentially_divisible_by_400:
            li $t1, 100
            div $t0, $t1                # get the modulus
            mfhi $t8

            bnez $t8, return_normal_negate
            li $t1, 400
            div $t0, $t1                # get the modulus
            mfhi $t8

            bnez $t8, return_negate_minus_4
            j return_normal_negate

        return_normal_negate:
            sub $t7, $zero, $t7         
            move $v0, $t7               # move to return
            jr $ra

        return_negate_minus_4:
            sub $t7, $zero, $t7         
            addi $t7, $t7, -4
            move $v0, $t7               # move to return
            jr $ra

    return_zero:
        li $v0, 0
        jr $ra
    return_one:
        li $v0, 1
        jr $ra
    return_neg_four:
        li $v0, -4
        jr $ra

datestring_to_num_days:
    addi $sp, $sp, -36          # Make room
    sw $s0, 32($sp)             # Make sure we're not tampering with s registers
    sw $s1, 28($sp)
    sw $s2, 24($sp)
    sw $s3, 20($sp)
    sw $s4, 16($sp)
    sw $s5, 12($sp)
    sw $s6, 8($sp)
    sw $s7, 4($sp)
    sw $ra, 0($sp)

    move $s0, $a0               # s0: first date
    move $s1, $a1               # s1: second date
    li $s2, 0                   # s2: the number of days to return
    li $s3, 0                   # s3: condition: if it's the same year
    li $s4, 0                   # s4: condition: if it's the same month

    lbu $t0, 0($s0)             # thousands year
    addi $t0, $t0, -48
    lbu $t1, 1($s0)             # hundreds year
    addi $t1, $t1, -48
    lbu $t2, 2($s0)             # tens year
    addi $t2, $t2, -48
    lbu $t3, 3($s0)             # ones year
    addi $t3, $t3, -48

    li $t8, 1000
    mul $t0, $t0, $t8          # t0: to sum thousands
    li $t8, 100
    mul $t1, $t1, $t8          # t1: to sum hundreds
    li $t8, 10
    mul $t2, $t2, $t8          # t2: to sum tens
    add $t0, $t0, $t1
    add $t0, $t0, $t2
    add $s5, $t0, $t3
    # s5: the year in register

    lbu $t1, 0($s1)              # thousands year
    addi $t1, $t1, -48
    lbu $t2, 1($s1)              # hundreds year
    addi $t2, $t2, -48
    lbu $t3, 2($s1)              # tens year
    addi $t3, $t3, -48
    lbu $t4, 3($s1)              # ones year
    addi $t4, $t4, -48

    li $t8, 1000
    mul $t1, $t1, $t8          # t0: to sum thousands
    li $t8, 100
    mul $t2, $t2, $t8          # t1: to sum hundreds
    li $t8, 10
    mul $t3, $t3, $t8          # t2: to sum tens
    add $t1, $t1, $t2
    add $t1, $t1, $t3
    add $s6, $t1, $t4
    # s6: the second year in register

    blt $s6, $s5, start_cant_be_before_end_date
    beq $s6, $s5, same_year
    j sum_the_year
    same_year:
        li $s3, 1               # s3 is 1 if it is the same year

    sum_the_year:
        sub $s7, $s6, $s5       # s7: the year difference
        addi $s7, $s7, 1        # calibrate
        move $a0, $s5           # gotta see if it's a leap year
        jal is_leap_year
        lw $ra, 0($sp)
        li $t0, 1               # compare to see if it's a leap year
        beq $v0, $t0, add_366
        addi $s2, $s2, 365
        j continue_summing
        add_366:
            addi $s2, $s2, 366  # it is a leap year
        continue_summing:
        addi $s5, $s5, 1
        addi $s7, $s7, -1       # we've accounted for a year
        bnez $s7, sum_the_year
        # the sum has accounted for year

    lbu $t0, 5($s0)              # thousands year
    addi $t0, $t0, -48
    lbu $t1, 6($s0)              # hundreds year
    addi $t1, $t1, -48
    li $t8, 10
    mul $t0, $t0, $t8          # t2: to sum tens
    add $s5, $t0, $t1
    # s5 has the month for first date

    lbu $t0, 5($s1)              # thousands year
    addi $t0, $t0, -48
    lbu $t1, 6($s1)              # hundreds year
    addi $t1, $t1, -48
    li $t8, 10
    mul $t0, $t0, $t8          # t2: to sum tens
    add $s6, $t0, $t1
    # s6 has the month for second date

    blt $s6, $s5, check_if_same_year
    beq $s6, $s5, check_if_same_year
    j add_days_abnormally
    check_if_same_year:
        bnez $s3, check_if_day_is_lower
        j add_days_abnormally
    check_if_day_is_lower:
        lbu $t0, 8($s0)
        addi $t0, $t0, -48
        lbu $t1, 9($s0)
        addi $t1, $t1, -48
        li $t7, 10
        mul $t8, $t0, $t7
        add $t8, $t8, $t1
        # t8 has the number of days in the first month
        lbu $t0, 8($s1)
        addi $t0, $t0, -48
        lbu $t1, 9($s1)
        addi $t1, $t1, -48
        li $t7, 10
        mul $t7, $t0, $t7
        add $t7, $t7, $t1
        # t7 has the number of days in the second month
        blt $t7, $t8, start_cant_be_before_end_date
        beq $t7, $t8, return_zero
        j add_days_abnormally
    add_days_abnormally:
        lbu $t0, 8($s0)
        addi $t0, $t0, -48
        lbu $t1, 9($s0)
        addi $t1, $t1, -48
        li $t7, 10
        mul $t8, $t0, $t7
        add $t8, $t8, $t1
        # t8 has the number of days in the first month
        lbu $t0, 8($s1)
        addi $t0, $t0, -48
        lbu $t1, 9($s1)
        addi $t1, $t1, -48
        li $t7, 10
        mul $t7, $t0, $t7
        add $t7, $t7, $t1
        # t7 has the number of days in the second month
        
        li $t0, 1
        beq $s6, $t0, january_abnormal
        li $t0, 2
        beq $s6, $t0, february_abnormal
        li $t0, 3
        beq $s6, $t0, march_abnormal
        li $t0, 4
        beq $s6, $t0, april_abnormal
        li $t0, 5
        beq $s6, $t0, may_abnormal
        li $t0, 6
        beq $s6, $t0, june_abnormal
        li $t0, 7
        beq $s6, $t0, july_abnormal
        li $t0, 8
        beq $s6, $t0, august_abnormal
        li $t0, 9
        beq $s6, $t0, september_abnormal
        li $t0, 10
        beq $s6, $t0, october_abnormal
        li $t0, 11
        beq $s6, $t0, november_abnormal
        li $t0, 12
        beq $s6, $t0, december_abnormal

        january_abnormal:
            li $t0, 31
            sub $t7, $t0, $t7

            sub $s2, $s2, $t7
            li $t0, 334         # the rest of the year
            sub $s2, $s2, $t0
            j second_month_abnormal
        february_abnormal:
            li $t0, 29
            sub $t7, $t0, $t7

            sub $s2, $s2, $t7
            li $t0, 306         # the rest of the year
            sub $s2, $s2, $t0
            j second_month_abnormal
        march_abnormal:
            li $t0, 31
            sub $t7, $t0, $t7

            sub $s2, $s2, $t7
            li $t0, 275         # the rest of the year
            sub $s2, $s2, $t0
            j second_month_abnormal
        april_abnormal:
            li $t0, 30
            sub $t7, $t0, $t7

            sub $s2, $s2, $t7
            li $t0, 245         # the rest of the year
            sub $s2, $s2, $t0
            j second_month_abnormal
        may_abnormal:
            li $t0, 31
            sub $t7, $t0, $t7

            sub $s2, $s2, $t7
            li $t0, 214         # the rest of the year
            sub $s2, $s2, $t0
            j second_month_abnormal
        june_abnormal:
            li $t0, 30
            sub $t7, $t0, $t7

            sub $s2, $s2, $t7
            li $t0, 184         # the rest of the year
            sub $s2, $s2, $t0
            j second_month_abnormal
        july_abnormal:
            li $t0, 31
            sub $t7, $t0, $t7

            sub $s2, $s2, $t7
            li $t0, 153         # the rest of the year
            sub $s2, $s2, $t0
            j second_month_abnormal
        august_abnormal:
            li $t0, 31
            sub $t7, $t0, $t7

            sub $s2, $s2, $t7
            li $t0, 122         # the rest of the year
            sub $s2, $s2, $t0
            j second_month_abnormal
        september_abnormal:
            li $t0, 30
            sub $t7, $t0, $t7

            sub $s2, $s2, $t7
            li $t0, 92         # the rest of the year
            sub $s2, $s2, $t0
            j second_month_abnormal
        october_abnormal:
            li $t0, 31
            sub $t7, $t0, $t7

            sub $s2, $s2, $t7
            li $t0, 61         # the rest of the year
            sub $s2, $s2, $t0
            j second_month_abnormal
        november_abnormal:
            li $t0, 30
            sub $t7, $t0, $t7

            sub $s2, $s2, $t7
            li $t0, 31         # the rest of the year
            sub $s2, $s2, $t0
            j second_month_abnormal
        december_abnormal:
            li $t0, 30
            sub $t7, $t0, $t7

            sub $s2, $s2, $t7
            j second_month_abnormal
    second_month_abnormal:
        li $t0, 1
        beq $s5, $t0, second_january_abnormal
        li $t0, 2
        beq $s5, $t0, second_february_abnormal
        li $t0, 3
        beq $s5, $t0, second_march_abnormal
        li $t0, 4
        beq $s5, $t0, second_april_abnormal
        li $t0, 5
        beq $s5, $t0, second_may_abnormal
        li $t0, 6
        beq $s5, $t0, second_june_abnormal
        li $t0, 7
        beq $s5, $t0, second_july_abnormal
        li $t0, 8
        beq $s5, $t0, second_august_abnormal
        li $t0, 9
        beq $s5, $t0, second_september_abnormal
        li $t0, 10
        beq $s5, $t0, second_october_abnormal
        li $t0, 11
        beq $s5, $t0, second_november_abnormal
        li $t0, 12
        beq $s5, $t0, second_december_abnormal

        second_january_abnormal:
            sub $s2, $s2, $t8
            j return_the_days
        second_february_abnormal:
            sub $s2, $s2, $t8
            addi $s2, $s2, -31
            j return_the_days
        second_march_abnormal:
            sub $s2, $s2, $t8
            addi $s2, $s2, -59
            j return_the_days
        second_april_abnormal:
            sub $s2, $s2, $t8
            addi $s2, $s2, -90
            j return_the_days
        second_may_abnormal:
            sub $s2, $s2, $t8
            addi $s2, $s2, -120
            j return_the_days
        second_june_abnormal:
            sub $s2, $s2, $t8
            addi $s2, $s2, -151
            j return_the_days
        second_july_abnormal:
            sub $s2, $s2, $t8
            addi $s2, $s2, -181
            j return_the_days
        second_august_abnormal:
            sub $s2, $s2, $t8
            addi $s2, $s2, -212
            j return_the_days
        second_september_abnormal:
            sub $s2, $s2, $t8
            addi $s2, $s2, -243
            j return_the_days
        second_october_abnormal:
            sub $s2, $s2, $t8
            addi $s2, $s2, -273
            j return_the_days
        second_november_abnormal:
            sub $s2, $s2, $t8
            addi $s2, $s2, -304
            j return_the_days
        second_december_abnormal:
            sub $s2, $s2, $t8
            addi $s2, $s2, -334
            j return_the_days

    return_the_days:
        move $v0, $s2
        jr $ra

    start_cant_be_before_end_date:
        li $v0, -1
        jr $ra

sell_book:
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    #jal get_book
    #jal datestring_to_num_days
    #jal hash_booksale
    lw $ra 0($sp)
    addi $sp, $sp, 4
    li $v0, -1
    li $v1, -1
    jr $ra

compute_scenario_revenue:
    addi $sp, $sp -8
    sw $s0, 0($sp)
    sw $s1, 4($sp)

    move $t0, $a0   # sales hashtable
    move $t1, $a1   # num of sales
    move $t2, $a2   # scenario bits

    move $s0, $t0
    addi $t0, $t0, 24   # t0 is price of the first book

    addi $t5, $t1, -1
    li $t6, 28
    mul $t5, $t5, $t6

    add $s0, $s0, $t5
    addi $s0, $s0, 24

    li $t9, 0      # the day
    li $t7, 0      # price total

    while_num_sales_not_zero:
        addi $t9, $t9, 1    # increment day
        addi $t1, $t1, -1
        srlv $s1, $t2, $t1
        li $t8, 1
        and $t8, $t8, $s1   # t8 has the leftmost bit
        beqz $t8, sell_leftmost
        j sell_rightmost
        sell_leftmost:
            lw $t4, 0($t0)

            # li $v0, 1
            # move $a0, $t4
            # syscall
            # li $a0, '\n'
            # li $v0, 11
            # syscall

            mul $t4, $t4, $t9

            add $t7, $t7, $t4   # adding to the price total
            addi $t0, $t0, 28
            bnez $t1, while_num_sales_not_zero
            j all_sales_done

        sell_rightmost:
            lw $t5, 0($s0)

            # li $v0, 1
            # move $a0, $t5
            # syscall
            # li $a0, '\n'
            # li $v0, 11
            # syscall

            mul $t5, $t5, $t9

            add $t7, $t7, $t5
            addi $s0, $s0, -28
            bnez $t1, while_num_sales_not_zero
            j all_sales_done
    all_sales_done:
    move $v0, $t7

    
    lw $s0, 0($sp)
    lw $s1, 4($sp)
    addi $sp, $sp 8
    jr $ra

maximize_revenue:
    addi $sp, $sp -20
    sw $s0, 12($sp)
    sw $s1, 8($sp)
    sw $s2, 4($sp)
    sw $s3, 16($sp)
    sw $ra, 0($sp)

    move $s0, $a0
    move $s1, $a1

    li $s2, 1
    li $t0, 2
    move $t1, $s1

    power_loop:
        mul $s2, $s2, $t0
        addi $t1, $t1, -1
        bnez $t1, power_loop

        li $s3, 0
    a_loop:
        move $a0, $s0
        move $a1, $s1
        move $a2, $s2
        jal compute_scenario_revenue
        blt $s3, $v0, replace_s3_with_v0
        j no_replacement
        replace_s3_with_v0:
            move $s3, $v0
            
        no_replacement:
            # move $a0, $v0
            # li $v0, 1
            # syscall
            # li $a0, '\n'
            # li $v0, 11
            # syscall
            # move $a0, $s2
            # li $v0, 1
            # syscall

            lw $ra, 0($sp)
            addi $s2, $s2, -1
            bnez $s2, a_loop

    move $v0, $s3
    lw $s0, 12($sp)
    lw $s1, 8($sp)
    lw $s2, 4($sp)
    lw $s3, 16($sp)
    addi $sp, $sp 20
    jr $ra

############################ DO NOT CREATE A .data SECTION ############################
############################ DO NOT CREATE A .data SECTION ############################
############################ DO NOT CREATE A .data SECTION ############################