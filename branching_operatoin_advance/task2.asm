.data
prompt: .asciiz "Enter a number: "
result1: .asciiz "The 4th bit is 1.\n"
result0: .asciiz "The 4th bit is 0.\n"

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

    # Check the 4th bit
    li $t1, 0x8   # Mask with 4th bit set (0b1000)
    and $t2, $t0, $t1  # Perform bitwise AND operation
    beq $t2, $t1, bit_is_set  # Branch if the 4th bit is set
    j bit_is_not_set  # Jump if the 4th bit is not set

bit_is_set:
    # Print result: the 4th bit is 1
    li $v0, 4
    la $a0, result1
    syscall
    j end_program

bit_is_not_set:
    # Print result: the 4th bit is 0
    li $v0, 4
    la $a0, result0
    syscall

end_program:
    # Exit program
    li $v0, 10
    syscall
