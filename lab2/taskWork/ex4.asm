.data 

num: .asciiz "please enter the number\n "
sum : .asciiz "the sum is :"

.text 
main:
li $t2,0

li $v0,4 
la $a0, num 
syscall 

li $t0 , 1

li $v0,5 
syscall 

move $t1, $v0

for:
bgt $t0, $t1 endfor 

add $t2, $t2,$t0
addi $t0, $t0 ,1

j for 


endfor:

li $v0,4 
la $a0, sum 
syscall

li $v0,1
move $a0,$t2
syscall

exit:
li $v0,10
syscall