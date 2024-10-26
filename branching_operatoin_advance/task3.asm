.data
prompt: .asciiz "Enter a number: "
result: .asciiz "After toggling the 4th bit: "

.text
.globl main

main:
    # Print prompt for user input
    li $v0, 4
    la $a0, prompt
    syscall

    # Read an integer from user
    li $v0, 5
    syscall
    move $t0, $v0  # Store the input number in $t0

    # Mask to toggle the 4th bit (binary: 1000)
    li $t1, 8

    # Toggle the 4th bit
    xor $t0, $t0, $t1  # Perform bitwise XOR operation to toggle the bit

    # Print the result
    li $v0, 4
    la $a0, result
    syscall

    # Print the modified number
    li $v0, 1
    move $a0, $t0
    syscall

    # Exit program
    li $v0, 10
    syscall
