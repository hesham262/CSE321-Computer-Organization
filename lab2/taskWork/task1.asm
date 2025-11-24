.data 
firstNO:  .asciiz "Enter the firstnumber\n"
secondNO: .asciiz "Enter the secondnumber\n"
thiedNo:  .asciiz "Enter the third number\n"
fourthNO : .asciiz"enter the fourth number\n"

avg : .asciiz "The avarge is:"

.text 
main: 
li $v0,4
la $a0, firstNO
syscall 

li $v0, 5
syscall

move $t0,$v0 

li $v0,4
la $a0, secondNO
syscall 

li $v0, 5
syscall

move $t1,$v0 

li $v0,4
la $a0, thiedNo
syscall 

li $v0, 5
syscall

move $t2,$v0 

li $v0,4
la $a0, fourthNO
syscall 

li $v0, 5
syscall

move $t3,$v0 

li $v0, 4
la $a0 , avg 
syscall 

add $t4 ,$t0, $t1
add $t4 ,$t2, $t4
add $t4 , $t4 ,$t3

li $t5,4

div $t6 , $t4 , $t5



move $a0 ,$t6

li $v0,1
syscall

exti:
li $v0,10
syscall

