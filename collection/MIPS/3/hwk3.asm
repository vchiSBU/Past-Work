# Vincent Chi
# vchi
# 112811026

############################ DO NOT CREATE A .data SECTION ############################
############################ DO NOT CREATE A .data SECTION ############################
############################ DO NOT CREATE A .data SECTION ############################

.text
load_game:
    # state is loaded into $a0
    # file name is loaded into $a1
    addi $sp, $sp, -12
    sw $a0, 4($sp)             # first stack refers to state
    sw $a1, 8($sp)             # second stack refers to the textfile name

    li $t8, -1                      # used to check and to return
    li $v0, 13                      # system call for open file
    move $a0, $a1                   # a0 now has the textfile name
    li $a1, 0                       # we are reading
    syscall                         # opens the file

    move $a0, $v0                   # moving file descriptor to a0
    move $s0, $v0

    beq $v0, $t8, simple_return     # if there's no file, return -1, -1
    li $t2, 0                       # has the count of hashtags
    li $t8, 0                       # t8 is now to check if we have gone past first two lines
    j begin_read                    # file exists, it's time to read

simple_return:
    move $v0, $t8
    move $v1, $t8                   # returns -1, -1

    lw $a0, 4($sp)             # first stack refers to state
    lw $a1, 8($sp)             # second stack refers to the textfile name
    addi $sp, $sp, 12

    jr $ra                          # the function ends here

begin_read:
    lw $t1, 4($sp)                 # loading the state into t1
    addi $t1, $t1, 5                # $t1 at the state string

    li $v0, 14                              # systemcall for reading file
    move $a1, $sp                           # loaded empty space
    li $a2, 1                               # maximum number of characters to read
    syscall                                 # a1 now has the next character

    lbu $t3, 0($a1)

    bltz $v0, load_game_finish              # file does not exist

    li $t0, '0'
    bgt $t3, $t0, a_number_for_row_check    # we found a number for a row
    j not_a_number
a_number_for_row_check:
    li $t0, '9'
    blt $t3, $t0, row_is_checked                 # we have a number for a row
    j not_a_number
row_is_checked:
    move $t4, $t3                           # has a digit of row
    move $t5, $zero                         # making sure it's zero

    li $v0, 14                              # systemcall for reading file
    move $a1, $sp                           # loaded empty space
    li $a2, 1                               # maximum number of characters to read
    syscall                                 # a1 now has the next character

    lbu $t3, 0($a1)

    li $t0, '0'
    bgt $t3, $t0, a_number_for_row_check_again      # we found a number for a row
    j not_a_number
a_number_for_row_check_again:
    li $t0, '9'
    blt $t3, $t0, row_is_checked_again                   # we have a number for a row
    j not_a_number
row_is_checked_again:
    move $t5, $t3                           # s1 has a second digit of row
    j not_a_number                          # we can assume there are no more numbers because max 99

not_a_number:
    li $v0, 14                              # systemcall for reading file
    move $a1, $sp                           # loaded empty space
    li $a2, 1                               # maximum number of characters to read
    syscall                                 # a1 now has the next character

    lbu $t3, 0($a1)

    li $t0, '\n'
    bne $t3, $t0, not_a_number              # we will traverse till we reach end of line

    # check the result of the read
    beqz $t5, one_digit_line                # if t5 is empty that means we only found one number
    j two_digit_line

one_digit_line:
    addi $t4, $t4, -48                      # t4 is now the numerical value of the line
    j check_if_we_done

two_digit_line:
    addi $t4, $t4, -48                      # t4 is now a tenth of its value
    addi $t5, $t5, -48                      # t5 is now the numerical value
    li $t0, 10
    mul $t4, $t4, $t0                       # t4 is now the numerical value
    add $t4, $t4, $t5                       # t4 is now the numerical value of the line
    # we don't have to go back because max two digits

check_if_we_done:
    addi $t8, $t8, 1                        # we have passed a line
    li $t0, 1
    beq $t8, $t0, save_number_of_rows       # if we only passed 1 line, save as the number of rows
    li $t0, 2
    beq $t8, $t0, save_number_of_columns    # we passed 2 lines, save as the number of columns
save_number_of_rows:
    lw $a0, 4($sp)             # first stack refers to state
    move $t6, $a0
    sb $t4, 0($t6)
    move $a0, $s0
    j begin_read
save_number_of_columns:
    lw $a0, 4($sp)             # first stack refers to state
    move $t6, $a0
    sb $t4, 1($t6)
    move $a0, $s0

    li $t7, 0                                   # t7 is the existence of apple

    li $t4, 0
    li $t5, 0           # new count for rows and columns

    # to do
read_one_at_a_time:
    li $v0, 14                              # systemcall for reading file
    move $a1, $sp                           # loaded empty space
    li $a2, 1                               # maximum number of characters to read
    syscall                                 # a1 now has the next character

    addi $t5, $t5, 1

    beqz $v0, load_game_finish              # reached end of file

    lbu $t3, 0($a1)
    li $t0, '1'
    beq $t3, $t0, set_head_row_and_column
    li $t0, '\r'
    beq $t3, $t0, read_one_at_a_time
    li $t0, '\n'
    beq $t3, $t0, go_to_next_row
    j check_char
    # we have to add every other character to the state a (97) is apple, 1-9 (49-57), A-Z(65-90) is body
set_head_row_and_column:
    lw $a0, 4($sp)
    move $t6, $a0
    sb $t4, 2($t6)
    move $t6, $a0
    sb $t4, 3($t6)
    move $a0, $s0
    j read_one_at_a_time

go_to_next_row:
    addi $t4, $t4, 1                        # add a row detected
    li $t5, 0
    j read_one_at_a_time

check_char:
    li $t0, '#'                             # we have to count how many hashtags
    beq $t3, $t0, increment_hashtag_count

    li $t0, 'a'                             # we have to check for existence of apple
    beq $t3, $t0, apple_exists

    j add_to_state

add_to_state:
    sb $t3, 0($t1)                          # store the letter into the state
    addi $t1, $t1, 1                        # go to next letter in the state
    j read_one_at_a_time
increment_hashtag_count:
    addi $t2, $t2, 1                        # we had found a hashtag
    j add_to_state                          # we need to add it to the state
apple_exists:
    addi $t7, $t7, 1                        # apple exists
    j add_to_state
load_game_finish:
    move $v0, $t3                           # count is in v0
    li $v0, 16                              # close file
    syscall

    bne $t7, $zero, return_apple
    j no_apple
    move $v0, $zero

return_apple:
    li $t7, 1
    move $v0, $t7   # apple exists register

no_apple:
    move $v1, $t2   # number of hashtags

    lw $a0, 4($sp)             # first stack refers to state
    lw $a1, 8($sp)             # second stack refers to the textfile name
    addi $sp, $sp, 12

    jr $ra

get_slot:
    move $t0, $a0   # t0 has the state

    move $t1, $a1   # t1 has the row
    move $t2, $a2   # t2 has the column
    
    li $t8, 0       # load a value to see if it exceeds the length
    add $t8, $t8, $t1   # input row
    lbu $t1, 1($t0)     # number of columns byte
    mult $t8, $t1   # multiply it by the number of columns to know how many characters we have to go through
    mflo $t8
    add $t8, $t8, $t2
    # t8 is now the count of the elements we have to go through
    move $t0, $a0   # t0 has the state
    move $t1, $a1   # t1 has the row

    addi $t0, $t0, 5    # gets the game grid to the gamegrid
    add $t0, $t0, $t8
    lb $t3, 0($t0)

    move $v0, $t3   # TAKE YOUR DAMN MONEY
    jr $ra

set_slot:
    move $t7, $a3   # the character to store
    move $t0, $a0   # t0 has the state

    move $t1, $a1   # t1 has the row
    move $t2, $a2   # t2 has the column
    
    li $t8, 0       # load a value to see if it exceeds the length
    add $t8, $t8, $t1   # input row
    lbu $t1, 1($t0)     # number of columns byte 0??
    mult $t8, $t1   # multiply it by the number of columns to know how many characters we have to go through
    mflo $t8
    add $t8, $t8, $t2
    # t8 is now the count of the elements we have to go through
    move $t0, $a0   # t0 has the state
    move $t1, $a1   # t1 has the row

    addi $t0, $t0, 5    # gets the game grid to the gamegrid
    add $t0, $t0, $t8
    sb $t7, 0($t0)

    move $v0, $t3   # TAKE YOUR DAMN MONEY
    jr $ra

place_next_apple:
    move $t0, $a0   # t0 has the state
    move $s3, $a1   # has apple coordinates
    move $t2, $a2   # has apple length

    addi $sp, $sp, -12  # 3 things I need to store
    sw $a0, 8($sp)      # 8th byte of sp has state
    sw $a1, 4($sp)      # 4th byte of sp has the apple coordinates
    sw $a2, 0($sp)      # 0th byte of sp has the apple length

need_to_scan:
    lbu $t3, 0($s3)     # apple row
    lbu $t4, 1($s3)     # apple column
    addi $s3, $s3, 2    # we've taken care of one pair

    lw $a0, 8($sp)    # reset the state
    move $a1, $t3       # moving the num of rows to arg 1
    move $a2, $t4       # moving the num of rows to arg 2

    addi $sp, $sp, -4
    sw $ra, 0($sp)
    jal get_slot
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lbu $t3, 0($s3)     # apple row
    lbu $t4, 1($s3)     # apple column

    li $t5, '.'         # we're checking for a FOKIN DOT
    beq $v0, $t5, replace_with_apple       # we FOUND AN EMPTY SPACEEEE
    j need_to_scan

replace_with_apple:
    lw $a0, 8($sp)    # reset the state
    li $t5, 'a'
    move $a3, $t5       # loading the apple for set slot
    move $a1, $t3
    move $a2, $t4       # giving set slot row and column
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    jal set_slot
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lbu $t3, 0($s3)     # apple row
    lbu $t4, 1($s3)     # apple column

    move $v0, $t3
    move $v1, $t4       # moving the rows and columns to return
    lw $a0, 8($sp)    # reset the state
    lw $a1, 4($sp)    # reset the apple coordinates
    lw $a2, 0($sp)    # reset the apple length
    addi $sp, $sp, 12   # reset the stack
    jr $ra

find_next_body_part:
    move $t0, $a0       # moves the state to t0
    move $t1, $a1       # moves the row to t1
    move $t2, $a2       # moves the column to t2
    move $t3, $a3       # moves the character to find into t3

    addi $sp, $sp, -16
    sw $a0, 12($sp)
    sw $a1, 8($sp)
    sw $a2, 4($sp)
    sw $a3, 0($sp)      # save everything onto the stack boys

    addi $t1, $t1, -1   # we're looking at above
    move $a1, $t1       # setting that row as the arg
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    jal get_slot
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    
    lw $a3, 0($sp)
    move $t3, $a3
    beq $v0, $t3, we_found_it
    j search_down

search_down:
    lw $a0, 12($sp)   # reset the state
    lw $a1, 8($sp)
    move $t1, $a1       # moves the row to t1
    lw $a2, 4($sp)
    move $t2, $a2       # moves the column to t2
    addi $t1, $t1, 1    # we're looking below
    move $a1, $t1       # setting that row as the arg
    move $a2, $t2
    addi $sp, $sp, -4

    sw $ra, 0($sp)
    jal get_slot
    lw $ra, 0($sp)

    addi $sp, $sp, 4
    
    lw $a3, 0($sp)
    move $t3, $a3

    beq $v0, $t3, we_found_it
    j search_left       # we didn't find it so search the left

search_left:
    lw $a0, 12($sp)   # reset the state
    lw $a1, 8($sp)
    move $t1, $a1       # moves the row to t1
    lw $a2, 4($sp)
    move $t2, $a2       # moves the column to t2
    addi $t2, $t2, -1   # we looking at the left row
    move $a1, $t1
    move $a2, $t2       # set the row and column to look at
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    jal get_slot
    lw $ra, 0($sp)
    addi $sp, $sp, 4

    lw $a3, 0($sp)
    move $t3, $a3
    beq $v0, $t3, we_found_it
    j search_right       # we didn't find it so search the right

search_right:
    lw $a0, 12($sp)   # reset the state
    lw $a1, 8($sp)
    move $t1, $a1       # moves the row to t1
    lw $a2, 4($sp)
    move $t2, $a2       # moves the column to t2
    # t1 is original row
    addi $t2, $t2, 1   # we looking at the left row
    move $a1, $t1
    move $a2, $t2       # set the new column to look at

    addi $sp, $sp, -4
    sw $ra, 0($sp)
    jal get_slot
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $a3, 0($sp)
    move $t3, $a3
    beq $v0, $t3, we_found_it
    j we_didnt_find_jack       # we didn't find it

we_didnt_find_jack:
    li $t1, -1                  # the value of failure
    move $v0, $t1
    move $v1, $t1               # FAILURE WILL NOT BE TOLERATED

    lw $a0, 12($sp)
    lw $a1, 8($sp)
    lw $a2, 4($sp)
    lw $a3, 0($sp)
    addi $sp, $sp, 16           # reset the stack
    jr $ra                      # GEGIQEGBIQEBGIQEBGIQNEGIQENKBG

we_found_it:
    lw $a0, 12($sp)
    lw $a1, 8($sp)
    lw $a2, 4($sp)
    lw $a3, 0($sp)
    addi $sp, $sp, 16           # reset the stack
    move $v0, $t1
    move $v1, $t2       # moving the column and row to return
    jr $ra

slide_body:
    addi $sp, $sp, -16
    sw $a0, 12($sp)     # state
    sw $a1, 8($sp)
    sw $a2, 4($sp)
    sw $a3, 0($sp)      # store everything to the stack

    move $t0, $a0       # t0 has the state
    move $t1, $a1       # t1 has the orientation of the row you want to slide to
    move $t2, $a2       # t2 has the orientation of the column you want to slide to
    move $t3, $a3       # t3 has the apples

    addi $t0, $t0, 2        # you have the head row in t0
    lbu $t8, 0($t0)         # you have the head row in t8
    add $t1, $t1, $t8       # you get the desired row to slide to in $t1
    addi $t0, $t0, 1        # head column. repeat above
    lbu $t8, 0($t0)
    add $t2, $t2, $t8       # you have the desired column to slide to in $t2

    move $a1, $t1       # you're now looking for the correct row
    move $a2, $t2       # you're now looking for the correct column

    addi $sp, $sp, -4
    sw $ra, 0($sp)
    jal get_slot
    lw $ra, 0($sp)
    addi $sp, $sp, 4

    li $t8, '.'         # checking for if you can move here
    beq $v0, $t8, slide
    li $t8, 'a'         # checking for if you can move here
    beq $v0, $t8, slide
    j cannot_slide
slide:
    lw $t0, 12($sp)     # state is reset
    lbu $t8, 0($t0)     # we need to reset where the head is
    addi $t8, $t8, 2    # get to the headrow
    #to do
cannot_slide:
    sw $a0, 12($sp)
    sw $a1, 8($sp)
    sw $a2, 4($sp)
    sw $a3, 0($sp)
    addi $sp, $sp, 16   # reset the stack

    li $t0, -1
    move $v0, $t0       # return negative 1 because we couldn't move
    jr $ra

add_tail_segment:
    move $t0, $a0       # state
    move $t1, $a1       # direction 'letter'
    move $t2, $a2       # tail_row
    move $t3, $a3       # tail_col

    addi $sp, $sp, -16
    sw $a0, 12($sp)
    sw $a1, 8($sp)
    sw $a2, 4($sp)
    sw $a3, 0($sp)      # save everything onto the stack boys

    move $a1, $t2       # we have to find the character in the tail right now
    move $a2, $t3
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    jal get_slot
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    move $s5, $v0       # s5 has the character at the tail
    lw $a0, 12($sp)
    lw $a1, 8($sp)
    lw $a2, 4($sp)
    lw $a3, 0($sp)      # do everything all again

    move $t0, $a0       # state
    move $t1, $a1       # direction 'letter'
    move $t2, $a2       # tail_row
    move $t3, $a3       # tail_col

    addi $t0, $t0, 4
    li $t8, 35
    lbu $t7, 0($t0)     # we have to compare the length byte
    beq $t0, $t7, invalid_stuff
    move $t0, $a0       # reset state

    li $t8, 'U'
    beq $t1, $t8, minus_row
    li $t8, 'D'
    beq $t1, $t8, add_row
    li $t8, 'L'
    beq $t1, $t8, minus_column
    li $t8, 'R'
    beq $t1, $t8, add_column
    j invalid_stuff

minus_row:
    addi $t2, $t2, -1
    j continue_tail
add_row:
    addi $t2, $t2, 1
    j continue_tail
minus_column:
    addi $t3, $t3, -1
    j continue_tail
add_column:
    addi $t3, $t3, 1
    j continue_tail

continue_tail:
    move $a0, $t0           # giving get_slot the state, row, and column
    move $a1, $t2
    move $a2, $t3
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    jal get_slot
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    li $t8, '.'
    beq $v0, $t8, actually_add_now
    j invalid_stuff         # only adding a tail if there's an empty space

actually_add_now:
    lw $a0, 12($sp)         # state in a0

    li $t8, '9'
    beq $s5, $t8, we_have_to_add_A            # the next tail should be A
    j add_anything_else
we_have_to_add_A:
    li $t8, 'A'
    move $a3, $t8       # setslot to A
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    jal set_slot
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    j restore_and_return

add_anything_else:
    addi $s5, $s5, 1    # we just have to add 1 to the tail character to get the next ascii value
    move $a3, $s5       
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    jal set_slot
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    j restore_and_return

restore_and_return:
    lw $a0, 12($sp)         # state in a0
    move $t0, $a0           # t0 has state
    lb $t7, 4($t0)          # t7 has the length byte
    addi $t7, $t7, 1
    lw $a0, 12($sp)
    lw $a1, 8($sp)
    lw $a2, 4($sp)
    lw $a3, 0($sp)      # restore
    addi $sp, $sp, 16

    move $v0, $t7
    jr $ra

invalid_stuff:
    li $t8, -1
    move $v0, $t8

    lw $a0, 12($sp)
    lw $a1, 8($sp)
    lw $a2, 4($sp)
    lw $a3, 0($sp)      # restore
    addi $sp, $sp, 16
    jr $ra

increase_snake_length:
    move $t0, $a0       # t0 has the state

    addi $sp, $sp, -8
    sw $a0, 4($sp)
    sw $a1, 0($sp)      # save it

    addi $t0, $t0, 2    # at the head row
    lbu $t2, 0($t0)     # t2 is the row of the head
    addi $t0, $t0, 1    # go to next byte
    lbu $t3, 0($t0)     # t3 is the column of the head
    addi $t0, $t0, 1
    lbu $s1, 0($t0)     # t4 is the length of the snake

    li $s0, '2'          # we load the next character to look for

    lw $a0, 4($sp)      # reset the state
    move $a1, $t2       # the row of the head
    move $a2, $t3       # the column of the head
    move $a3, $s0       # the character we're looking for

go_to_each_body_part:
    addi $s1, $s1, -1   # it starts with the head being counted
    beqz $s1, at_tail
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    jal find_next_body_part
    lw $ra, 0($sp)
    addi $sp, $sp, 4

    move $s2, $v0
    move $s7, $v1

    lw $a0, 4($sp)      # reset the state
    move $a1, $v0       # the number of rows of the next body part
    move $a2, $v1       # the number of columns of the next body part
    li $s6, '9'
    beq $s0, $s6, change_t8_to_A

    j continue_each_body_part_loop
change_t8_to_A:
    li $s6, 'A'
    j we_went_to_next_character
continue_each_body_part_loop:
    addi $s0, $s0, 1    # go to the next character of snake
we_went_to_next_character:
    move $a3, $s0       # we move the next character to search for
    j go_to_each_body_part
    
at_tail:
    lw $a0, 8($sp)      # state

    lw $a1, 0($sp)      # a1 has the direction
    move $t1, $a1       # t1 has the direction
    li $t8, 'U'
    beq $t1, $t8, make_down
    li $t8, 'D'
    beq $t1, $t8, make_up
    li $t8, 'L'
    beq $t1, $t8, make_right
    li $t8, 'R'
    beq $t1, $t8, make_left
    j invalid_stuff
make_down:
    li $t8, 'D'
    move $t1, $t8
    j changed_direction
make_up:
    li $t8, 'U'
    move $t1, $t8
    j changed_direction
make_right:
    li $t8, 'R'
    move $t1, $t8
    j changed_direction
make_left:
    li $t8, 'L'
    move $t1, $t8
changed_direction:
    lw $a0, 4($sp)

    li $t8, 'D'
    beq $t1, $t8, check_downer
    li $t8, 'U'
    beq $t1, $t8, check_upper
    li $t8, 'R'
    beq $t1, $t8, check_righter
    li $t8, 'L'
    beq $t1, $t8, check_lefter

    li $s4, 0           # counter
check_upper:
    move $a1, $t1       # direction
    move $a2, $s2       # tail row
    move $a3, $s7       # tail column

    addi $sp, $sp, -4
    sw $ra, 0($sp)
    jal add_tail_segment
    lw $ra, 0($sp)
    addi $sp, $sp, 4

    addi $s4, $s4, 1
    li $t8, 4           # if counter reaches 4, stop
    beq $s4, $t8, get_me_out
    li $t1, 'D'
    li $t8, -1
    bne $v0, $t8, get_me_out
    j check_downer

check_downer:
    move $a1, $t1       # direction
    move $a2, $s2       # tail row
    move $a3, $s7       # tail column

    addi $sp, $sp, -4
    sw $ra, 0($sp)
    jal add_tail_segment
    lw $ra, 0($sp)
    addi $sp, $sp, 4

    addi $s4, $s4, 1
    li $t8, 4           # if counter reaches 4, stop
    beq $s4, $t8, get_me_out
    li $t1, 'L'
    li $t8, -1
    bne $v0, $t8, get_me_out

    j check_lefter

check_lefter:
    move $a1, $t1       # direction
    move $a2, $s2       # tail row
    move $a3, $s7       # tail column

    addi $sp, $sp, -4
    sw $ra, 0($sp)
    jal add_tail_segment
    lw $ra, 0($sp)
    addi $sp, $sp, 4

    addi $s4, $s4, 1
    li $t8, 4           # if counter reaches 4, stop
    beq $s4, $t8, get_me_out
    li $t1, 'R'
    li $t8, -1
    bne $v0, $t8, get_me_out

    j check_righter

check_righter:
    move $a1, $t1       # direction
    move $a2, $s2       # tail row
    move $a3, $s7       # tail column

    addi $sp, $sp, -4
    sw $ra, 0($sp)
    jal add_tail_segment
    lw $ra, 0($sp)
    addi $sp, $sp, 4

    addi $s4, $s4, 1
    li $t8, 4           # if counter reaches 4, stop
    beq $s4, $t8, get_me_out
    li $t1, 'U'
    li $t8, -1
    bne $v0, $t8, get_me_out

    j check_upper

get_me_out:
    jr $ra

move_snake:
    move $t0, $a0
    addi $t0, $t0, 4    # gets to the length
    lbu $t1, 0($t0)     # gets the length byte
    addi $t1, $t1, 1    # success
    move $v0, $t1
    jr $ra

simulate_game:
    jr $ra

############################ DO NOT CREATE A .data SECTION ############################
############################ DO NOT CREATE A .data SECTION ############################
############################ DO NOT CREATE A .data SECTION ############################
