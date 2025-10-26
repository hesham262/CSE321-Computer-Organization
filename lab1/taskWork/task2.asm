.data 
name: .asciiz "Aml Hesham\n"
ID: .asciiz "20812022201190\n"
Course: .asciiz "CSE321-Computer-Organization\n"

.text
main:
li $v0,4
la $a0, name 
syscall 

li $v0,4 
la $a0, ID
syscall 

li $v0,4
la $a0, Course
syscall 

li $v0,10
syscall