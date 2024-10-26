.data
    str1: .asciiz "Enter first number: "
    str2: .asciiz "Enter second number: "
    result: .asciiz "The result is: "

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

    # sub the numbers
    sub $t2, $t0, $t1   # $t2 = $t0 - $t1

    # Print the result
    li $v0, 4           
    la $a0, result 
    syscall

    # Print the result number
    li $v0, 1           
    move $a0, $t2       
    syscall

    # Exit the program
    li $v0, 10          # exit
    syscall