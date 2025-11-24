

.data 
num: .asciiz "please enter the number\n"
avg : .asciiz "The result is :"

.text

main:
li $v0,4
la $a0, num
syscall 

li $v0,5
syscall
move $t0,$v0


li $t1, 0
li $t2, 0


for:
bge $t1, $t0, endfor 

li $v0,5
syscall
move $t3,$v0

add $t2, $t2,$t3

addi $t1 , $t1,1

 j for 


endfor:

div  $t2,$t0
mflo $t4

li $v0,4
la $a0, avg 
syscall
 
 
 li $v0,1 
 move $a0, $t4
 syscall

exit:
li $v0,10
syscall
