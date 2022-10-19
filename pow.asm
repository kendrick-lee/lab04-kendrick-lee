# pow.asm program
#

# C++ (NON-RECURSIVE) code snippet of pow(x,n):
#   int x, n, pow=1; 
#   cout << "Enter a number x:\n"; 
#   cin >> x;
#   cout << "Enter the exponent n:\n"; 
#   cin >> n; 
#   for (int i = 1; i <= n; i++) { 
#   	pow = pow * x; 
#   } 
#   cout << "Power(x,n) is:\n" << pow << "\n";
#
# Assembly (NON-RECURSIVE) code version of pow(x,n):
#
.data
	prompt1: .asciiz "Enter a number x:\n"
	prompt2: .asciiz "Enter the exponent n:\n"
	prompt3: .asciiz "Power(x,n) is:\n"
		



.text
main:
	li $v0 4
	la $a0 prompt1
	syscall	
	
	li $v0 5
	syscall
	move $t0 $v0

	li $v0 4
	la $a0 prompt2
	syscall	
	
	li $v0 5
	syscall
	move $t1 $v0
	
	move $t3 $t0
	li $t2 0
	addi $t1 -1
	
	li $t4 0
	
    loop:
	beq $t1 $t4 case1
	beq $t1 $t2 print
	mult $t3 $t0
	mflo $t3
	addi $t2 1
	j loop

    case1:
	li $t3 1

	li $v0 4
	la $a0 prompt3
	syscall	
	
	li $v0 1
	move $a0 $t3
	syscall
	
	j exit
	
	
    print:
	li $v0 4
	la $a0 prompt3
	syscall	
	
	li $v0 1
	move $a0 $t3
	syscall
	
	j exit

   
	

exit:
	li $v0 10
	syscall
