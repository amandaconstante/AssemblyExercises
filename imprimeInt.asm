#v�deo 3 Descomplica Olba = impress�o de inteiro

#se eu n�o precisar de nenhuma vari�vel da mem�ria RAM, 
#eu posso emitix o .data e deixar s� o .text, ele � obrigat�rio
.data
	say: .asciiz "Idade: "
	idade: .word 62 #valor inteiro na mem�ria RAM

.text
	li $v0, 4
	la $a0, say
	syscall
	
	li $v0, 1
	lw $a0, idade
	syscall
	
	