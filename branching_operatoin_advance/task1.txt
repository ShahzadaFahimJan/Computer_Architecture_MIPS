.data
str: .asciiz "Enter a number: \n"
str1: .asciiz "Enter a number to perform operation (1: Add, 2: Subtract, 3: Multiply, 4: Divide): \n"
result: .asciiz "Result: "
newline: .asciiz "\n"
.text
.globl main

main:

    # Ask for the first number
    li $v0, 4
    la $a0, str
    syscall

    # Read the first number from user
    li $v0, 5
    syscall
    move $t0, $v0

    # Ask for the operation
    li $v0, 4
    la $a0, str1
    syscall

    # Read the operation from user
    li $v0, 5
    syscall
    move $t3, $v0

    # Ask for the second number
    li $v0, 4
    la $a0, str
    syscall

    # Read the second number from user
    li $v0, 5
    syscall
    move $t1, $v0

    # Perform the operation based on user input
    beq $t3, 1, add_numbers
    beq $t3, 2, subtract_numbers
    beq $t3, 3, multiply_numbers
    beq $t3, 4, divide_numbers

add_numbers:
    add $t4, $t0, $t1
    j print_result

subtract_numbers:
    sub $t4, $t0, $t1
    j print_result

multiply_numbers:
    mul $t4, $t0, $t1
    j print_result

divide_numbers:
    div $t0, $t1
    mflo $t4
    j print_result

print_result:
    # Print the result
    li $v0, 4
    la $a0, result
    syscall

    li $v0, 1
    move $a0, $t4
    syscall

    # Print newline
    li $v0, 4
    la $a0, newline
    syscall

    # Exit program
    li $v0, 10
    syscall
