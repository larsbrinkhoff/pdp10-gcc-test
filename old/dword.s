	TITLE dword.i
	SEARCH MONSYM

	; OWGBP = one-word global byte pointer
	; GIW = global indirect word

gcc2.compiled:
gnu.c:

LC7:
	ASCIZ	/7/
LC6:
	ASCIZ	/6/
LC5:
	ASCIZ	/5/
LC4:
	ASCIZ	/4/
LC3:
	ASCIZ	/3/
LC2:
	ASCIZ	/2/
LC1:
	ASCIZ	/1/
LC0:
	ASCIZ	/0/
printoct:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	; current_function_anonymous_args = 0
	move 4,1
	movei 3,0
L6:
	movei 2,13
	sub 2,3
	move 1,2
	lsh 1,1
	add 1,2
	movns 1
	move 2,4
	ash 2,(1)
	andi 2,7
	jumpe 2,L58
	cain 2,1
	 jrst L59
	cain 2,2
	 jrst L60
	cain 2,3
	 jrst L61
	cain 2,4
	 jrst L62
	cain 2,5
	 jrst L63
	cain 2,6
	 jrst L64
	cain 2,7
	 jrst L65
L5:
	addi 3,1
	caig 3,13
	 jrst L6
	popj 17,
L65:
	HRROI 1,LC7
	PSOUT
	jrst L5
L64:
	HRROI 1,LC6
	PSOUT
	jrst L5
L63:
	HRROI 1,LC5
	PSOUT
	jrst L5
L62:
	HRROI 1,LC4
	PSOUT
	jrst L5
L61:
	HRROI 1,LC3
	PSOUT
	jrst L5
L60:
	HRROI 1,LC2
	PSOUT
	jrst L5
L59:
	HRROI 1,LC1
	PSOUT
	jrst L5
L58:
	HRROI 1,LC0
	PSOUT
	jrst L5
	EXTERN	..main
LC8:
	ASCIZ	/ /
LC9:
	ASCIZ	/
/
	ENTRY	main
main:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	; current_function_anonymous_args = 0
	pushj 17,..main
	move 1,[foo]
	dmove 2,[0
	42]
	dmovem 2,(1)
	move 1,(1)
	pushj 17,printoct
	HRROI 1,LC8
	PSOUT
	move 1,foo+1
	pushj 17,printoct
	HRROI 1,LC9
	PSOUT
	movei 1,0
	popj 17,
foo:
	BLOCK	2
	END
