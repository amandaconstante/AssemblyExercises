#vídeo 2: impressão de caractere
.data	
	caractere: .byte 'A' #caractere a ser impresso
	
.text	
	li $v0, 4 #instrução de impressão de char o string
	la $a0, caractere
	syscall
	
	li $v0, 10 #encerrar o programa
	syscall