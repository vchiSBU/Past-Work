# erase this line and type your first and last name here in a comment
# erase this line and type your Net ID here in a comment (e.g., jmsmith)
# erase this line and type your SBU ID number here in a comment (e.g., 111234567)

############################ DO NOT CREATE A .data SECTION ############################
############################ DO NOT CREATE A .data SECTION ############################
############################ DO NOT CREATE A .data SECTION ############################

.text

init_list:
    move $t0, $a0                   # t0: card_list
    sw $zero, 0($t0)                # stores zero as first word in cardlist, which is SIZE
    sw $zero, 4($t0)                # stores zero as second word in cardlist, which is HEAD
    # There's nothing to return
    jr $ra

append_card:
    addi $sp, $sp, -12
    sw $s0, 8($sp)
    sw $s1, 4($sp)
    sw $ra, 0($sp)                  # no tampering

    move $s0, $a0                   # s0: card_list
    move $s1, $a1                   # s1: card_num

    li $a0, 8
    li $v0, 9
    syscall
    # v0 is new node

    sw $s1, 0($v0)
    sw $zero, 4($v0)
    # set up the new node

    # now we have to get to the tail
    lw $t0, 0($s0)                  # the size of the list
    lw $t2, 4($s0)                  # t2: the next node

    beqz $t2, append_as_head

    go_through_list:
        lw $t3, 4($t2)
        beqz $t3, append_to_tail
        move $t2, $t3
        j go_through_list

    append_as_head:
        sw $v0, 4($s0)
        addi $t0, $t0, 1
        j finished_append

    append_to_tail:
        sw $v0, 4($t2)
        addi $t0, $t0, 1
        j finished_append

    finished_append:
        move $v0, $t0

        lw $s0, 8($sp)
        lw $s1, 4($sp)
        lw $ra, 0($sp)                  # no tampering
        addi $sp, $sp, 12

        jr $ra

create_deck:
    addi $sp, $sp, -20
    sw $s0, 16($sp)
    sw $s1, 12($sp)
    sw $s2, 8($sp)
    sw $s3, 4($sp)
    sw $ra, 0($sp)

    li $a0, 8
    li $v0, 9
    syscall
    # v0 is new node

    move $a0, $v0
    move $s3, $a0
    jal init_list
    lw $ra, 0($sp)

    move $s0, $s3
    li $s1, 0x00645330                  # s1: hex value for card
    li $s2, 80                          # s2: the counter to go down

    loop_till_s2_is_zero:
        move $a0, $s0
        move $a1, $s1
        jal append_card
        lw $ra, 0($sp)

        li $t0, 0x00645339
        beq $s1, $t0, reset_s1_hex
        j no_reset_s1_hex
        reset_s1_hex:
            li $s1, 0x00645330
        no_reset_s1_hex:
            # we continue
        addi $s1, $s1, 1
        addi $s2, $s2, -1
        bnez $s2, loop_till_s2_is_zero

    move $v0, $s0                       # list pointer return

    lw $s0, 16($sp)
    lw $s1, 12($sp)
    lw $s2, 8($sp)
    lw $s3, 4($sp)
    addi $sp, $sp, 20

    jr $ra

deal_starting_cards:
    addi $sp, $sp, -32
    sw $s0, 28($sp)
    sw $s1, 24($sp)
    sw $s2, 20($sp)
    sw $s3, 16($sp)
    sw $s4, 12($sp)
    sw $s5, 8($sp)
    sw $s6, 4($sp)
    sw $ra, 0($sp)

    move $s0, $a0                       # s0: board
    move $s1, $a1                       # s1: deck

    move $s6, $s1                       # just so that we can access head

    lw $t0, 0($s0)                      # t0: the first column. guaranteed 9 columns
    lw $t1, 4($s1)                      # t1: the head of the list
    # element 0, 9, 18, 27, 36 are in column 1

    lw $t2, 0($t1)                      # t2: the card information
    move $a0, $t0
    move $a1, $t1
    jal append_card
    lw $ra, 0($sp)

    li $s4, 0                           # s4: what column we are on
    reset_column_count:
    lw $s2, 0($s0)                      # t0: the first column. guaranteed 9 columns
    lw $s3, 4($s1)                      # t1: the head of the list

    continue_deal:
    li $s5, 0                           # s5: what element in the column we are on
    reset_nine:
        li $t8, 9
    
        # element 0, 9, 18, 27, 36 are in column 1
        get_to_the_next_card:
            beqz $t8, we_reached_next_card
            beqz $s3, we_finished_all_columns
            lw $s3, 4($s3)                  # go to next card

            addi $t8, $t8, -1
            j get_to_the_next_card

        we_reached_next_card:
            lw $t2, 0($s3)                  # t2: the card information

            move $a0, $s2
            move $a1, $t2
            jal append_card
            lw $ra, 0($sp)

            li $t0, 4
            beq $s5, $t0, we_are_at_fifth
            addi $s5, $s5, 1
            j reset_nine

        we_are_at_fifth:
            lw $t2, 0($s3)                  # t2: the card information
            li $t8, 0x00760000
            or $t2, $t2, $t8

            move $a0, $s2
            move $a1, $t2
            jal append_card
            lw $ra, 0($sp)
            j we_finished_a_column

        we_finished_a_column:
            lw $s1, 4($s1)                  # go to next column and card in the list
            addi $s0, $s0, 4

            li $t0, 4
            beq $s4, $t0, add_only_four
            li $t0, 5
            beq $s4, $t0, we_finished_all_columns
            addi $s4, $s4, 1
            j reset_column_count
        
        add_only_four:
            li $s5, 1
            j reset_nine

    we_finished_all_columns:
        li $t0, 36
        sw $t0, 0($s6)                      # there are now only 36 cards after dealing 44
        sw $s1, 4($s6)                      # storing the new head as the 45th card

        lw $s0, 28($sp)
        lw $s1, 24($sp)
        lw $s2, 20($sp)
        lw $s3, 16($sp)
        lw $s4, 12($sp)
        lw $s5, 8($sp)
        lw $s6, 4($sp)
        addi $sp, $sp, 32
        
        jr $ra

get_card:
    move $t0, $a0                           # t0: the cardlist
    move $t1, $a1                           # t1: the index

    bltz $t1, return_invalid_index
    lw $t2, 0($t0)                          # t2: the size
    move $t3, $t2
    addi $t3, $t3, -1
    bgt $t1, $t3, return_invalid_index

    lw $t2, 4($t0)                          # t2: the head of list

    get_card_loop:
        beqz $t1, return_this_card
        lw $t2, 4($t2)                      # goes to the next card
        addi $t1, $t1, -1
        j get_card_loop

    return_invalid_index:
        li $v0, -1
        li $v1, -1
        jr $ra

    return_this_card:
        lw $t0, 0($t2)
        move $v1, $t0

        li $t4, 700000
        blt $t0, $t4, return_1_in_v0
        j return_2_in_v0

        return_1_in_v0:
            li $v0, 1
            jr $ra

        return_2_in_v0:
            li $v0, 2
            jr $ra

check_move:
    addi $sp, $sp, -36
    sw $s0, 28($sp)
    sw $s1, 24($sp)
    sw $s2, 20($sp)
    sw $s3, 12($sp)
    sw $s4, 8($sp)
    sw $s5, 4($sp)
    sw $s6, 32($sp)
    sw $ra, 0($sp)

    move $s0, $a0                           # s0: the board
    move $s1, $a1                           # s1: the deck
    move $s2, $a2                           # s2: the move structure
    sw $s2, 16($sp)                         # to get each byte

    lbu $s3, 19($sp)                         # 0 to move, 1 to deal move
    lbu $s4, 18($sp)                         # the column we want to move to
    lbu $s5, 17($sp)                         # how many cards we want to move..?
    lbu $s6, 16($sp)                         # the column we want to move from

    li $t0, 1
    bgt $s3, $t0, return_invalid_move_1
    bltz $s3, return_invalid_move_1
    beq $s3, $t0, check_if_all_other_bytes_are_zero
    j continue_move_1

    check_if_all_other_bytes_are_zero:
        bnez $s4, return_invalid_move_1
        bnez $s5, return_invalid_move_1
        bnez $s6, return_invalid_move_1
        j continue_move_1

    return_invalid_move_1:
        li $v0, -1
    lw $s0, 28($sp)
    lw $s1, 24($sp)
    lw $s2, 20($sp)
    lw $s3, 12($sp)
    lw $s4, 8($sp)
    lw $s5, 4($sp)
    lw $s6, 32($sp)
    addi $sp, $sp, 36
        jr $ra

    continue_move_1:
        beqz $s3, continue_move_2

        lw $t0, 0($s1)
        beqz $t0, return_invalid_move_2
        lw $t0, 0($s0)
        beqz $t0, return_invalid_move_2
        lw $t0, 4($s0)
        beqz $t0, return_invalid_move_2
        lw $t0, 8($s0)
        beqz $t0, return_invalid_move_2
        lw $t0, 12($s0)
        beqz $t0, return_invalid_move_2
        lw $t0, 16($s0)
        beqz $t0, return_invalid_move_2
        lw $t0, 20($s0)
        beqz $t0, return_invalid_move_2
        lw $t0, 24($s0)
        beqz $t0, return_invalid_move_2
        lw $t0, 28($s0)
        beqz $t0, return_invalid_move_2
        lw $t0, 32($s0)
        beqz $t0, return_invalid_move_2
        j continue_move_2

    return_invalid_move_2:
        li $v0, -2

    lw $s0, 28($sp)
    lw $s1, 24($sp)
    lw $s2, 20($sp)
    lw $s3, 12($sp)
    lw $s4, 8($sp)
    lw $s5, 4($sp)
    lw $s6, 32($sp)
    addi $sp, $sp, 36
        jr $ra

    continue_move_2:
        bltz $s6, return_invalid_move_3
        bltz $s4, return_invalid_move_3

        li $t0, 8
        bgt $s6, $t0, return_invalid_move_3
        bgt $s4, $t0, return_invalid_move_3

        j continue_move_3

    return_invalid_move_3:
        li $v0, -3

        lw $s0, 28($sp)
    lw $s1, 24($sp)
    lw $s2, 20($sp)
    lw $s3, 12($sp)
    lw $s4, 8($sp)
    lw $s5, 4($sp)
    lw $s6, 32($sp)
    addi $sp, $sp, 36

        jr $ra

    continue_move_3:
        move $t0, $s6
        li $t1, 4
        mult $t0, $t1
        mflo $t0
        move $t1, $s0
        add $t1, $t1, $t0
        lw $t0, 0($t1)
        bgt $s5, $t0, return_invalid_move_4
        bltz $s5, return_invalid_move_4
        j continue_move_4

    return_invalid_move_4:
        li $v0, -4

    lw $s0, 28($sp)
    lw $s1, 24($sp)
    lw $s2, 20($sp)
    lw $s3, 12($sp)
    lw $s4, 8($sp)
    lw $s5, 4($sp)
    lw $s6, 32($sp)
    addi $sp, $sp, 36
        jr $ra

    continue_move_4:
        beq $s4, $s6, return_invalid_move_5
        j continue_move_5

    return_invalid_move_5:
        li $v0, -5
            lw $s0, 28($sp)
    lw $s1, 24($sp)
    lw $s2, 20($sp)
    lw $s3, 12($sp)
    lw $s4, 8($sp)
    lw $s5, 4($sp)
    lw $s6, 32($sp)
    addi $sp, $sp, 36
        jr $ra

    continue_move_5:
        move $t0, $s6
        li $t1, 4
        mult $t0, $t1
        mflo $t0
        move $t1, $s0
        add $t1, $t1, $t0
        lw $t1, 0($t1)

        move $a0, $t1
        move $a1, $s5
        jal get_card
        lw $ra, 0($sp)

        li $t0, 2
        beq $v0, $t0, continue_move_6
        j return_invalid_move_6

    return_invalid_move_6:
        li $v0, -6
            lw $s0, 28($sp)
    lw $s1, 24($sp)
    lw $s2, 20($sp)
    lw $s3, 12($sp)
    lw $s4, 8($sp)
    lw $s5, 4($sp)
    lw $s6, 32($sp)
    addi $sp, $sp, 36
        jr $ra

    continue_move_6:
        move $t0, $s6
        li $t1, 4
        mult $t0, $t1
        mflo $t0
        
        move $t1, $s0
        add $t1, $t1, $t0

        lw $t1, 0($t1)
        
        move $t0, $s5
        addi $t0, $t0, 1
        loop_to_get_to_card_of_donor:
            lw $t1, 4($t1)
            addi $t0, $t0, -1
            bnez $t0, loop_to_get_to_card_of_donor
            
        lw $t8, 0($t1)              # the first card content

        check_till_tail:
            lw $t1, 4($t1)
            beqz $t1, continue_move_7
            lw $t0, 0($t1)
            addi $t8, $t8, -1
            bne $t8, $t0, return_invalid_move_7
            j check_till_tail

        return_invalid_move_7:
            li $v0, -7
                lw $s0, 28($sp)
    lw $s1, 24($sp)
    lw $s2, 20($sp)
    lw $s3, 12($sp)
    lw $s4, 8($sp)
    lw $s5, 4($sp)
    lw $s6, 32($sp)
    addi $sp, $sp, 36
            jr $ra

    continue_move_7:
        move $t0, $s4
        li $t1, 4
        mult $t0, $t1
        mflo $t0

        move $t1, $s0
        add $t1, $t1, $t0

        lw $t0, 0($t1)          # we are at recipient column head
        beqz $t0, success_move

        loop_to_get_to_tail_of_recipient:
            lw $t1, 4($t0)
            beqz $t1, look_other_column
            lw $t0, 4($t0)
            j loop_to_get_to_tail_of_recipient

        look_other_column:

        lw $t7, 0($t0)               # t7 is card value

        move $t0, $s6
        li $t1, 4
        mult $t0, $t1
        mflo $t0

        move $t1, $s0
        add $t1, $t1, $t0

        lw $t1, 0($t1)          # head of donor column
        move $t0, $s5
        addi $t0, $t0, 1
        loop_to_get_to_card_of_donor_2:
            lw $t1, 4($t1)
            addi $t0, $t0, -1
            bnez $t0, loop_to_get_to_card_of_donor_2

        lw $t8, 0($t1)              # the first card content

        addi $t7, $t7, -1
        bne $t8, $t7, return_invalid_move_8
        j success_move

    return_invalid_move_8:
        li $v0, -8
            lw $s0, 28($sp)
    lw $s1, 24($sp)
    lw $s2, 20($sp)
    lw $s3, 12($sp)
    lw $s4, 8($sp)
    lw $s5, 4($sp)
    lw $s6, 32($sp)
    addi $sp, $sp, 36
        jr $ra

    success_move:
        bnez $s3, deal_move_return_one

        move $t0, $s4
        li $t1, 4
        mult $t0, $t1
        mflo $t0
        move $t1, $s0
        add $t1, $t1, $t0

        lw $t0, 0($t1)
        beqz $t0, not_deal_move_return_three

        j not_deal_move_return_two

    deal_move_return_one:
        li $v0, 1
            lw $s0, 28($sp)
    lw $s1, 24($sp)
    lw $s2, 20($sp)
    lw $s3, 12($sp)
    lw $s4, 8($sp)
    lw $s5, 4($sp)
    lw $s6, 32($sp)
    addi $sp, $sp, 36
        jr $ra

    not_deal_move_return_three:
        li $v0, 3
            lw $s0, 28($sp)
    lw $s1, 24($sp)
    lw $s2, 20($sp)
    lw $s3, 12($sp)
    lw $s4, 8($sp)
    lw $s5, 4($sp)
    lw $s6, 32($sp)
    addi $sp, $sp, 36
        jr $ra

    not_deal_move_return_two:
        li $v0, 2
            lw $s0, 28($sp)
    lw $s1, 24($sp)
    lw $s2, 20($sp)
    lw $s3, 12($sp)
    lw $s4, 8($sp)
    lw $s5, 4($sp)
    lw $s6, 32($sp)
    addi $sp, $sp, 36
        jr $ra

clear_full_straight:
    addi $sp, $sp, -32
    sw $s0, 28($sp)
    sw $s1, 24($sp)
    sw $s2, 20($sp)
    sw $s3, 12($sp)
    sw $s4, 8($sp)
    sw $s5, 4($sp)
    sw $ra, 0($sp)

    move $s0, $a0           # s0: the board
    move $s1, $a1           # s1: column number

    bltz $s1, col_num_invalid_1
    li $t0, 8
    bgt $s1, $t0, col_num_invalid_1
    j check_neg_2

    col_num_invalid_1:
        li $v0, -1
            lw $s0, 28($sp)
    lw $s1, 24($sp)
    lw $s2, 20($sp)
    lw $s3, 12($sp)
    lw $s4, 8($sp)
    lw $s5, 4($sp)
    lw $ra, 0($sp)
    addi $sp, $sp, 32
        jr $ra

    check_neg_2:
        lw $t0, 0($s0)
        li $t1, 10
        blt $t0, $t1, col_num_invalid_2
        j check_neg_3

    col_num_invalid_2:
        li $v0, -2
            lw $s0, 28($sp)
    lw $s1, 24($sp)
    lw $s2, 20($sp)
    lw $s3, 12($sp)
    lw $s4, 8($sp)
    lw $s5, 4($sp)
    lw $ra, 0($sp)
    addi $sp, $sp, 32
        jr $ra

    check_neg_3:
        move $t0, $s1
        li $t1, 4
        mult $t0, $t1
        mflo $t0
        move $t1, $s0
        add $t1, $t1, $t0

        li $t6, 10
        lw $t0, 0($t1)      # t0: the cardlist of the column
        lw $t4, 0($t0)      # size of cardlist
        blt $t4, $t6, col_num_invalid_3

        li $t6, 700000
        move $t2, $t4
        addi $t2, $t2, -10

        get_to_last_ten:
            lw $t0, 4($t0)      # the head

            addi $t2, $t2, -1
            bnez $t2, get_to_last_ten

            blt $t4, $t6, col_num_invalid_3
            j start_counting_the_straight

        start_counting_the_straight:
            move $t5, $t4           # temp copy
            lw $t0, 4($t0)      # the next
            lw $t4, 0($t0)      # the value

            beqz $t4, success_straight_clear

            addi $t5, $t5 -1
            bne $t5, $t4, col_num_invalid_3
            addi $t0, $t0, 1
            j start_counting_the_straight

    col_num_invalid_3:
        li $v0, -3
            lw $s0, 28($sp)
    lw $s1, 24($sp)
    lw $s2, 20($sp)
    lw $s3, 12($sp)
    lw $s4, 8($sp)
    lw $s5, 4($sp)
    lw $ra, 0($sp)
    addi $sp, $sp, 32
        jr $ra

    success_straight_clear:
        move $t0, $s1
        li $t1, 4
        mult $t0, $t1
        mflo $t0
        move $t1, $s0
        add $t1, $t1, $t0

        lw $t0, 0($t1)      # t0: the cardlist of the column
        lw $t4, 0($t0)      # size of cardlist

        li $t6, 700000
        move $t2, $t4
        addi $t2, $t2, -11

        get_to_last_eleven:
            lw $t0, 4($t0)      # the head

            addi $t2, $t2, -1
            bnez $t2, get_to_last_eleven

        sw $zero, 4($t0)    # empty
        addi $t4, $t4, -10

        move $t0, $s1
        li $t1, 4
        mult $t0, $t1
        mflo $t0
        move $t1, $s0
        add $t1, $t1, $t0

        lw $t0, 0($t1)      # t0: the cardlist of the column
        lw $t4, 0($t0)      # new size

        beqz $t4, return_two
        j return_one

    return_two:
        li $v0, 2
            lw $s0, 28($sp)
    lw $s1, 24($sp)
    lw $s2, 20($sp)
    lw $s3, 12($sp)
    lw $s4, 8($sp)
    lw $s5, 4($sp)
    lw $ra, 0($sp)
    addi $sp, $sp, 32
        jr $ra

    return_one:
        li $v0, 1
            lw $s0, 28($sp)
    lw $s1, 24($sp)
    lw $s2, 20($sp)
    lw $s3, 12($sp)
    lw $s4, 8($sp)
    lw $s5, 4($sp)
    lw $ra, 0($sp)
    addi $sp, $sp, 32
        jr $ra

deal_move:
    addi $sp, $sp, -24
    sw $s0, 20($sp)
    sw $s1, 16($sp)
    sw $s2, 12($sp)
    sw $s3, 8($sp)
    sw $s4, 4($sp)
    sw $ra, 0($sp)

    move $s0, $a0       # s0: board
    move $s1, $a1       # s1: deck

    li $s3, 0           # the column we are on

    each_column_add_a_card_from_deck:
    li $t0, 9
    beq $s3, $t0, every_column_added

    move $t0, $s3
        li $t1, 4
        mult $t0, $t1
        mflo $t0
    move $t1, $s0
    add $t1, $t1, $t0

    lw $s4, 0($t1)      # t0: the cardlist of the column

    li $t0, 0           # we get the first card and put in 0 index
    move $a0, $s1
    move $a1, $t0
    jal get_card
    lw $ra, 0($sp)

    move $t0, $v1
    li $t5, 0x00760000
    or $t0, $t0, $t5

    move $a0, $s4
    move $a1, $t0
    jal append_card
    lw $ra, 0($sp)

    addi $s3, $s3, 1
    j each_column_add_a_card_from_deck

    every_column_added:
    lw $s0, 20($sp)
    lw $s1, 16($sp)
    lw $s2, 12($sp)
    lw $s3, 8($sp)
    lw $s4, 4($sp)
    lw $ra, 0($sp)
        addi $sp, $sp, 24
        jr $ra

move_card:
    addi $sp, $sp, -24
    sw $s0, 20($sp)
    sw $s1, 16($sp)
    sw $s2, 12($sp)
    sw $s3, 8($sp)
    sw $s4, 4($sp)
    sw $ra, 0($sp)

    move $s0, $a0               # s0: board
    move $s1, $a1               # s1: deck
    move $s2, $a2               # s2: move

    jal check_move
    lw $ra, 0($sp)

    bltz $v0, return_neg_one
    j do_the_move

    return_neg_one:
        li $v0, -1
    lw $s0, 20($sp)
    lw $s1, 16($sp)
    lw $s2, 12($sp)
    lw $s3, 8($sp)
    lw $s4, 4($sp)
    lw $ra, 0($sp)
    addi $sp, $sp, 24
        jr $ra

    do_the_move:
        li $v0, 1
    lw $s0, 20($sp)
    lw $s1, 16($sp)
    lw $s2, 12($sp)
    lw $s3, 8($sp)
    lw $s4, 4($sp)
    lw $ra, 0($sp)
    addi $sp, $sp, 24
        jr $ra

load_game:
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    jal init_list
    lw $ra, 0($sp)

    li $v0, -1
    li $v1, -1

    addi $sp, $sp, 4
    jr $ra

simulate_game:
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    jal load_game
    lw $ra, 0($sp)

    li $v0, -1
    addi $sp, $sp, 4
    jr $ra

############################ DO NOT CREATE A .data SECTION ############################
############################ DO NOT CREATE A .data SECTION ############################
############################ DO NOT CREATE A .data SECTION ############################
