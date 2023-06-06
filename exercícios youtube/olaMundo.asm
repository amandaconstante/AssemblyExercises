.data	#.data: área para dados na memória principal
	msg: .asciiz "Hello World!" #mensagem a ser exibida para o usuário

.text #.text: área para instrução do programa	
	
	
	li $v0, 4 	#instrução para impressão de string
	la $a0, msg #indicar o endereço em que está a mensagem
	syscall #comando de impressão do registrador $a0