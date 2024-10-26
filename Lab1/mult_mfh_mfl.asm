.data
    str1: .asciiz "Enter first number: "
    str2: .asciiz "Enter second number: "
    result1: .asciiz "High part of the result: "
    result2: .asciiz "Low part of the result: "

.text
.globl main

main:
    
    li $v0, 4           
    la $a0, str1    
    syscall

    li $v0, 5           
    syscall
    move $t0, $v0      

 
    li $v0, 4          
    la $a0, str2    
    syscall

    li $v0, 5          
    syscall
    move $t1, $v0       

    # Multiply the numbers
    mult $t0, $t1       # multiply $t0 and $t1
    mfhi $t2            # move high part of result to $t2
    mflo $t3            # move low part of result to $t3

    # Print high part of the result
    li $v0, 4           
    la $a0, result1   
    syscall
    li $v0, 1       
    move $a0, $t2       
    syscall

    # Print low part of the result
    li $v0, 4          
    la $a0, result2
    syscall
    li $v0, 1          
    move $a0, $t3       
    syscall

    # Exit the program
    li $v0, 10          # system call for exit
    syscall
