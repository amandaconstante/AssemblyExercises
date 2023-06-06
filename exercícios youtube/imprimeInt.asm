#vídeo 3 Descomplica Olba = impressão de inteiro

#se eu não precisar de nenhuma variável da memória RAM, 
#eu posso emitix o .data e deixar só o .text, ele é obrigatório
.data
	say: .asciiz "Idade: "
	idade: .word 62 #valor inteiro na memória RAM

.text
	li $v0, 4
	la $a0, say
	syscall
	
	li $v0, 1
	lw $a0, idade
	syscall
	
	