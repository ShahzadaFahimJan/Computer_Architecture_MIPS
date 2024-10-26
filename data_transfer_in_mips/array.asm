.data
input_prompt:   .asciiz "Enter a string: "
output_prompt:  .asciiz "You entered: "
newline:        .asciiz "\n"
max_length:     .word 100  # Maximum length of the input string

.text
.globl main

main:
    # Print input prompt
    li $v0, 4
    la $a0, input_prompt
    syscall

    # Allocate memory for the string
    li $v0, 9
    li $a0, 0         # Allocate space for the string
    lw $a1, max_length # Load maximum length from memory
    syscall
    move $t0, $v0      # Save the address of the allocated string in $t0

    # Read input string
    li $v0, 8
    la $a0, ($t0)      # Load the address of the allocated string into $a0
    lw $a1, max_length # Load maximum length from memory
    syscall

    # Print output prompt
    li $v0, 4
    la $a0, output_prompt
    syscall

    # Print the input string character by character
    move $t1, $t0      # Copy the address of the string to $t1
print_loop:
    lb $t2, 0($t1)     # Load a character from the string
    beq $t2, $zero, end_print # If the character is null (end of string), exit loop
    li $v0, 11          # System call code for printing a character
    move $a0, $t2       # Load the character to be printed into $a0
    syscall
    addi $t1, $t1, 1    # Move to the next character in the string
    j print_loop        # Repeat the loop

end_print:
    # Print a newline character
    li $v0, 4
    la $a0, newline
    syscall

    # Exit the program
    li $v0, 10
    syscall
