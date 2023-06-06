.data
	pulaLinha: .asciiz "\n"
	erro: .asciiz "ERRO "
	.text #tipo texto 
	.globl main

main:
	li $v1, 0
	li $t1, -1
while:
	li $v0, 5
	syscall
	
	move $s1, $v0
	beq $s1,$t1 Resposta
	addi $v1, $v1, 1
	add $s0, $s1, $s0
	j while
	
Mensagem:	
	li $v0, 4
	la $a0, erro
	syscall
	j end	

Resposta:
	div $s0,$v1
	mflo $t0 	
	
Print:
	move $a0,$s0
	li $v0, 1
	syscall
	li $v0, 4
	la $a0, pulaLinha
	syscall
	beq $v1, $zero Mensagem
	move $a0,$t0
	li $v0, 1
	syscall

end:
	li $v0, 10
	syscall