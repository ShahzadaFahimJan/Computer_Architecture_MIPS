.data
str: .asciiz "Enter a number: "
str1: .asciiz "Number is negative or equal to zero\n"
str3: .asciiz "Number is greater than zero\n"

.text
.globl main

main:
    # Print prompt
    li $v0, 4
    la $a0, str
    syscall

    # Read integer from user
    li $v0, 5
    syscall
    move $t0, $v0

    # Compare the number with zero
    bgt $t0, $zero, greater_than_zero
    # If less than or equal to zero
    li $v0, 4
    la $a0, str1
    syscall
    j end

greater_than_zero:
    # If greater than zero
    li $v0, 4
    la $a0, str3
    syscall

end:
    li $v0, 10
    syscall
