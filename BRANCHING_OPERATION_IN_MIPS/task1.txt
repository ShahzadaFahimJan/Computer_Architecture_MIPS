.data
    prompt: .asciiz "Enter a number: "

.text
.globl main

main:
    # Print prompt
    li $v0, 4
    la $a0, prompt
    syscall

    # Read integer from user
    li $v0, 5
    syscall
    move $t0, $v0

    # Extract last digit
    div $t0, $t0, 10
    mfhi $t3

    # Display the last digit
    move $a0, $t3  # Load the last digit into $a0
    li $v0, 1
    syscall

    # Exit program
    li $v0, 10
    syscall
