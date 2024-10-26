.data
Num1: .asciiz "\tEnter the lower limit: "
Num2: .asciiz "\tEnter the upper limit: "
Prime: .asciiz "\t is Prime\n"
NotPrime: .asciiz ""

.text
.globl main

main:
    # Print "Enter the lower limit: "
    li $v0, 4
    la $a0, Num1
    syscall

    # Read lower limit
    li $v0, 5
    syscall
    move $s0, $v0 

    # Print "Enter the upper limit: "
    li $v0, 4
    la $a0, Num2
    syscall

    # Read upper limit
    li $v0, 5
    syscall
    move $s1, $v0 

    # Loop from lower to upper limit
    loop:
        move $a0, $s0 # Load number to check in $a0
        jal isPrime  # Call isPrime function
        beq $v0, 1, printPrime # If isPrime returns 1, print the number

        # Continue to the next number
        addi $s0, $s0, 1
        ble $s0, $s1, loop # If lower limit <= upper limit, continue loop
        j end

    isPrime:
        # Handle base cases (0 and 1 are not prime numbers)
        beq $a0, 0, notPrime
        beq $a0, 1, notPrime

        # Check for divisors from 2 to sqrt(n)
        li $t0, 2
        loop_check_divisors:
            blt $t0, $a0, checkDivisor
            j primeExit

        checkDivisor:
            div $a0, $t0
            mfhi $t1
            beqz $t1, notPrime # If remainder is 0, number is not prime
            addi $t0, $t0, 1 # Increment divisor
            j loop_check_divisors

        primeExit:
            li $v0, 1
            li $v1, 1
            j endFunction

        printPrime:
            li $v0, 1
            move $a0, $s0
            syscall
            li $v0, 4
            la $a0, Prime
            syscall
            j endFunction

        notPrime:
            li $v0, 0
            j endFunction

        endFunction:
            jr $ra # Return from function

    end:
        li $v0, 10
        syscall
