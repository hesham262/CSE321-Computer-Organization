.data 

number: .asciiz "Enter the number\n" 
positive: .asciiz "the number is positive\n"
negative: .asciiz "the number is negative\n"
zero:.asciiz "the number is zero\n"

.text
main:

li $v0,4 
la $a0, number 
syscall

li $v0,5
syscall

move $t0 ,$v0

if:
blez $t0 , elsif
li $v0,4
la $a0,positive
syscall
j exit


elsif:
bne $t0, $zero else

li $v0,4
la $a0, zero
syscall
j exit

else:
li $v0,4 
la $a0, negative
syscall

exit:
li $v0,10
syscall
