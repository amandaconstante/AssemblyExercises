#aula 8 descomplica oliba 

.data 	#preciso do .data pq tenho que colocar na memória RAM as mensagens

	saudacao: .asciiz "Olá, informe sua idade: "
	saida: .asciiz "Sua idade é: "
.text
	li $v0, 4 		#função apra imprimir uma string
	la $a0, saudacao	#la = load address: carrega 'saudacao' da memoria para registrador $a0
	syscall
	
	li $v0, 5	#leitura de inteiros, o valor que o usuário fornecer vai para $v0
	syscall
	
	move $t0, $v0 	#movi valor p $t0 (p ñ perder o valor já q precisarei do $v0 p próx operação)
	
	li $v0, 4	#imprime string 
	la $a0, saida
	syscall
	
	li $v0, 1	#imprime inteiro
	move $a0, $t0 	#imprime o que está em $a0, então preciso mover o valor para ele.
	syscall