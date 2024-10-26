.data
    result_msg: .asciiz "Multiplication Table of 2: "
   space: .asciiz " "

.text
.globl main

main:
    # Print the result message
    li $v0, 4           # System call for print_str (code 4)
    la $a0, result_msg  # Load address of the result message into $a0
    syscall             # Make the system call

    # Initialize loop counter to 1
    li $t1, 1

print_table:
    # Calculate and print the table entry: 2 * t1
    li $t0, 2           # Load constant value 2 into $t0
    mul $t2, $t0, $t1   # Calculate 2 * t1
    move $a0, $t2       # Move the result to $a0
    li $v0, 1           # System call for print_int (code 1)
    syscall             # Make the system call

    # Print a newline character
    li $v0, 4           # System call for print_str (code 4)
    la $a0, space        # Load address of newline character into $a0
    syscall             # Make the system call

    # Check if the loop counter is less than or equal to 10
    addi $t1, $t1, 1    # Increment loop counter
    blez $t1, print_table  # Branch back to the loop if t1 <= 10

    # Exit program
    li $v0, 10          # System call for exit (code 10)
    syscall             # Make the system call
