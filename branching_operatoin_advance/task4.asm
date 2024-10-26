.data
Start: .asciiz "\n\t***** A program to check if a number is even or odd *****\n"
Num1 : .asciiz "\t Please Enter a Number: "
Even: .asciiz "\t Entered Number is Even\n\n" 
Odd: .asciiz "\t Entered Number is Odd\n\n"
.text
.globl main

main:
    # Print the welcome message
    li $v0, 4
    la $a0, Start
    syscall

input_number:
    # Prompt for user input
    li $v0, 4
    la $a0, Num1
    syscall

    # Read an integer from user
    li $v0, 5
    syscall
    move $t0, $v0

    # Check if the number is even or odd
    li $t1, 2
    div $t0, $t1
    mfhi $t2

    beq $t2, $zero, is_even # if $t2 == 0, the number is even
    j is_odd

is_even:
    # Print message: the number is even
    li $v0, 4
    la $a0, Even
    syscall
    j input_number

is_odd:
    # Print message: the number is odd
    li $v0, 4
    la $a0, Odd
    syscall
    j input_number
