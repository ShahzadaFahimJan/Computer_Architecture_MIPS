.data
prompt: .asciiz "Enter a number: "
result_msg: .asciiz "Sum of numbers from 1 to "
newline: .asciiz "\n"

.text
.globl main

main:
    # Print prompt to enter a number
    li $v0, 4
    la $a0, prompt
    syscall

    # Read user input
    li $v0, 5
    syscall
    move $t0, $v0  # Store user input in $t0

    # Initialize sum to 0
    li $t1, 0  # $t1 = sum

    # Loop from 1 to $t0 and compute the sum
    li $t2, 1  # $t2 = loop variable
loop_start:
    bgt $t2, $t0, loop_end  # If loop variable > limit, exit loop
    add $t1, $t1, $t2  # sum = sum + loop variable
    addi $t2, $t2, 1  # Increment loop variable
    j loop_start  # Repeat loop

loop_end:
    # Print the result message
    li $v0, 4
    la $a0, result_msg
    syscall

    # Print the limit
    move $a0, $t0
    li $v0, 1
    syscall

    # Print newline
    li $v0, 4
    la $a0, newline
    syscall

    # Print the sum
    move $a0, $t1
    li $v0, 1
    syscall

    # Exit program
    li $v0, 10
    syscall
