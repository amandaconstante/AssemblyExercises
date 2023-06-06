#Aula 4 desCOMplicaOliba - Soma de Inteiros
#add recebe 3 resgitradores
#addi recebe 2 registradores e um número inteito

.text
	li $t0, 5
	li $t1, 2
	mul $s0, $t0, $t1
	#addi $s1, $s0, 5
	
	li $v0, 1
	move $a0, $s0
	syscall