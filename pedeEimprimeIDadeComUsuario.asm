#aula 8 descomplica oliba 

.data 	#preciso do .data pq tenho que colocar na mem�ria RAM as mensagens

	saudacao: .asciiz "Ol�, informe sua idade: "
	saida: .asciiz "Sua idade �: "
.text
	li $v0, 4 		#fun��o apra imprimir uma string
	la $a0, saudacao	#la = load address: carrega 'saudacao' da memoria para registrador $a0
	syscall
	
	li $v0, 5	#leitura de inteiros, o valor que o usu�rio fornecer vai para $v0
	syscall
	
	move $t0, $v0 	#movi valor p $t0 (p � perder o valor j� q precisarei do $v0 p pr�x opera��o)
	
	li $v0, 4	#imprime string 
	la $a0, saida
	syscall
	
	li $v0, 1	#imprime inteiro
	move $a0, $t0 	#imprime o que est� em $a0, ent�o preciso mover o valor para ele.
	syscall