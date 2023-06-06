.data
.text
.globl main
main:
	li $v0, 5
	syscall
	
	move $s1, $v0
	li $s0, 1
	
while:
	mult $s0, $s1
	mflo $s0
	subi $s1, $s1, 1
	bnez $s1, while
print:
	move $a0, $s0
	li $s0, 1
	syscall
end:
	li $s0, 10
	syscall