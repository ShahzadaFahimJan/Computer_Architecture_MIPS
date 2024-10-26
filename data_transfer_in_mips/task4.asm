.data
    num_terms: .word 10    # Number of terms in the Fibonacci series
    space: .asciiz " "     # Space character for printing

.text
.globl main

main:
    #number of terms
    lw $t0, num_terms

    # Initialize the first two Fibonacci numbers
    li $t1, 0   # First Fibonacci number
    li $t2, 1   # Second Fibonacci number

    #  Fibonacci series
    loop:
        
        move $a0, $t1        # Move Fibonacci number to $a0
        li $v0, 1            
        syscall             

        # Print a space between numbers
        li $v0, 4           
        la $a0, space        
        syscall             

        # Compute the next Fibonacci number: t3 = t1 + t2
        add $t3, $t1, $t2

        # Update t1 and t2 for the next iteration
        move $t1, $t2        # t1 = t2 
        move $t2, $t3        # t2 = t3

        # Decrement the number of terms remaining
        sub $t0, $t0, 1

        # Check if there are more terms to generate
        bnez $t0, loop  # Branch back to the loop if there are more terms

  
    li $v0, 10           
    syscall             
