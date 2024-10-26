.data
Num1: .asciiz "\tEnter a Number : " 
Prime: .asciiz "\tNumber is Prime \n\n"
Not_a_prime: .asciiz "\tNumber is not Prime \n\n"

.text
main: 
again:
li $t0, 0 
li $t1, 1 # Loop counter
li $t2, 2 # use for division (num/2) and for mflo 
li $t3, 0 # Loop controller
li $t4, 0 # Use for mfhi


li $v0, 4 
la $a0, Num1
syscall

li $v0, 5 
syscall
move $t0, $v0;

div $t0, $t2
mflo $t2

j Loop 
Loop:
addi $t1, $t1, 1 
div $t0, $t1 
mfhi $t4
ble	$t1, $t2, inSideLoop # if $t0 <= $t1 then target 
li $v0, 4
la $a0, Prime 
syscall
j END
inSideLoop:
beq	$t4, 0, Check	# if $t0 == $t1 then target
j Loop
Check:
li $v0, 4
la $a0, Not_a_prime 
syscall
j END
END:
j again
li $v0, 10
syscall
