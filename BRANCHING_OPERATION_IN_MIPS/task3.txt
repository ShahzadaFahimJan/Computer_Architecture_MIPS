.data
prompt1: .asciiz "Enter the first number: "
prompt2: .asciiz "Enter the second number: "
equal_msg: .asciiz "The numbers are equal.\n"
not_equal_msg: .asciiz "The numbers are not equal.\n"

.text
.globl main

main:
    # Print prompt for the first number
    li $v0, 4
    la $a0, prompt1
    syscall

    # Read the first number from user
    li $v0, 5
    syscall
    move $t0, $v0

    # Print prompt for the second number
    li $v0, 4
    la $a0, prompt2
    syscall

    # Read the second number from user
    li $v0, 5
    syscall
    move $t1, $v0

    # Compare the two numbers
    beq $t0, $t1, equal_numbers

    # If not equal
    li $v0, 4
    la $a0, not_equal_msg
    syscall
    j end

equal_numbers:
    # If equal
    li $v0, 4
    la $a0, equal_msg
    syscall

end:
    li $v0, 10
    syscall
