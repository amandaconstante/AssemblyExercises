#v�deo 2: impress�o de caractere
.data	
	caractere: .byte 'A' #caractere a ser impresso
	
.text	
	li $v0, 4 #instru��o de impress�o de char o string
	la $a0, caractere
	syscall
	
	li $v0, 10 #encerrar o programa
	syscall