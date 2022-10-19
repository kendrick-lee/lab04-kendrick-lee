# min.asm program
#

.data

        # TODO: Complete these declarations / initializations

       	prompt1:  .asciiz "Enter the next number:\n"
        prompt2:  .asciiz "Minimum: "
    	endline:  .asciiz "\n"

#Text Area (i.e. instructions)
.text

main:
	li $v0 4
	la $a0 prompt1
	syscall	
	
	li $v0 5
	syscall
	move $t0 $v0

	li $v0 4
	la $a0 prompt1
	syscall	
	
	li $v0 5
	syscall
	move $t1 $v0

	li $v0 4
	la $a0 prompt1
	syscall	
	
	li $v0 5
	syscall
	move $t2 $v0

	blt $t0 $t1 case2
	move $t0 $t1
	j case2

    case2:
	blt $t0 $t2 print
	move $t0 $t2
	
    print:
	
	li $v0 4
	la $a0 prompt2
	syscall	
	
	li $v0 1
	move $a0 $t0
	syscall
	
	li $v0 4
	la $a0 endline
	syscall	
	
	j exit
	

exit:
	li $v0 10
	syscall
