.data
age_prompt: .asciiz "Enter your age: "
eligible_msg: .asciiz "You can apply for CNIC.\n"
ineligible_msg: .asciiz "You cannot apply for CNIC.\n"

.text
.globl main

main:
    # Print age prompt
    li $v0, 4
    la $a0, age_prompt
    syscall

    # Read age from user
    li $v0, 5
    syscall
    move $t0, $v0  # Store age in $t0

    # Compare age with 18
    li $t1, 18
    bgt $t0, $t1, eligible  # Branch if age > 18

    # If age <= 18
    li $v0, 4
    la $a0, ineligible_msg
    syscall
    j end_program

eligible:
    # If age > 18
    li $v0, 4
    la $a0, eligible_msg
    syscall

end_program:
    li $v0, 10
    syscall

