.data	#.data: �rea para dados na mem�ria principal
	msg: .asciiz "Hello World!" #mensagem a ser exibida para o usu�rio

.text #.text: �rea para instru��o do programa	
	
	
	li $v0, 4 	#instru��o para impress�o de string
	la $a0, msg #indicar o endere�o em que est� a mensagem
	syscall #comando de impress�o do registrador $a0