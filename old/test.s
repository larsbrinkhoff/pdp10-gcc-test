	TITLE	test.c
	SEARCH	MONSYM

	.DIRECTIVE	KL10

DEFINE OWGBP(S,A)<	; one-word global byte pointer
A+<S*10000,,0>
>
DEFINE GIW (A)<A>	; global indirect word
	.PSECT .text

gcc2.compiled:
gnu.c:
	EXTERN	external.variable
	EXTERN	foo
	.ENDPS
	.PSECT .text/ronly
	ENTRY	extended.addressing
extended.addressing:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 4
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	adjsp 17,1
	movei 0,1
	movem 0,@[GIW external.variable]
	movem 0,@[GIW global.variable]
	movem 0,@[GIW local.variable]
	move 1,[GIW extended.addressing]
	movem 1,-1(17)
	move 1,[GIW foo]
	movem 1,-1(17)
	adjsp 17,-1
	popj 17,

	ENTRY	add0
add0:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	move 1,@[GIW external.variable]
	add 1,@[GIW global.variable]
	add 1,@[GIW local.variable]
	popj 17,

	ENTRY	add1
add1:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	add 1,2
	popj 17,

	ENTRY	add2
add2:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	add 1,(2)
	popj 17,

	ENTRY	add3
add3:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	add 2,(1)
	move 1,2
	popj 17,

	ENTRY	add4
add4:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	addi 1,52
	popj 17,

	ENTRY	add5
add5:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	addm 1,(2)
	popj 17,

	ENTRY	add6
add6:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	addm 2,(1)
	popj 17,

	ENTRY	add7
add7:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	add 1,(2)
	movem 1,(2)
	popj 17,

	ENTRY	add8
add8:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	add 2,(1)
	movem 2,(1)
	move 1,2
	popj 17,

	ENTRY	add9
add9:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	movei 0,53
	addm 0,@[GIW 12]
	popj 17,

	EXTERN	x
y%0:
	BLOCK	1
	ENTRY	add10
add10:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	movei 0,52
	addm 0,@[GIW x]
	addm 0,@[GIW y%0]
	popj 17,

	ENTRY	add11
add11:
	; current_function_args_size = 4
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	add 1,2
	add 1,3
	add 1,4
	add 1,-1(17)
	popj 17,

	ENTRY	add11b
add11b:
	; current_function_args_size = 4
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 4
	; frame_pointer_needed = 0
	adjsp 17,1
	move 0,-2(17)
	movem 0,(17)
	pushj 17,add11
	adjsp 17,-1
	popj 17,

	ENTRY	add11c
add11c:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 4
	; frame_pointer_needed = 0
	adjsp 17,1
	movei 0,5
	movem 0,(17)
	movei 1,1
	movei 2,2
	movei 3,3
	movei 4,4
	pushj 17,add11
	adjsp 17,-1
	popj 17,

	ENTRY	add12
add12:
	; current_function_args_size = 8
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	add 1,2
	add 1,3
	add 1,4
	add 1,-1(17)
	add 1,-2(17)
	popj 17,

	ENTRY	add12b
add12b:
	; current_function_args_size = 8
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 8
	; frame_pointer_needed = 0
	adjsp 17,2
	move 0,-3(17)
	movem 0,(17)
	move 0,-4(17)
	movem 0,-1(17)
	pushj 17,add12
	adjsp 17,-2
	popj 17,

	ENTRY	add12c
add12c:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 8
	; frame_pointer_needed = 0
	adjsp 17,2
	movei 0,5
	movem 0,(17)
	movei 0,6
	movem 0,-1(17)
	movei 1,1
	movei 2,2
	movei 3,3
	movei 4,4
	pushj 17,add12
	adjsp 17,-2
	popj 17,

	ENTRY	add13
add13:
	; current_function_args_size = 12
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	add 1,2
	add 1,3
	add 1,4
	add 1,-1(17)
	add 1,-2(17)
	add 1,-3(17)
	popj 17,

	ENTRY	add13b
add13b:
	; current_function_args_size = 12
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 12
	; frame_pointer_needed = 0
	adjsp 17,3
	move 0,-4(17)
	movem 0,(17)
	move 0,-5(17)
	movem 0,-1(17)
	move 0,-6(17)
	movem 0,-2(17)
	pushj 17,add13
	adjsp 17,-3
	popj 17,

	ENTRY	add13c
add13c:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 12
	; frame_pointer_needed = 0
	adjsp 17,3
	movei 0,5
	movem 0,(17)
	movei 0,6
	movem 0,-1(17)
	movei 0,7
	movem 0,-2(17)
	movei 1,1
	movei 2,2
	movei 3,3
	movei 4,4
	pushj 17,add13
	adjsp 17,-3
	popj 17,

	ENTRY	dadd1
dadd1:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	dadd 1,3
	popj 17,

	ENTRY	dadd1b
dadd1b:
	; current_function_args_size = 8
	; current_function_pretend_args_size = 4
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	adjsp 17,1
	move 0,-1(17)
	movem 0,(17)
	movem 4,-1(17)
	dmove 1,2
	movem 4,-2(17)
	dadd 1,-2(17)
	move 0,(17)
	movem 0,-1(17)
	adjsp 17,-1
	popj 17,

	ENTRY	dadd1c
dadd1c:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 4
	; frame_pointer_needed = 0
	adjsp 17,1
	movei 0,3
	movem 0,-1(17)
	movei 4,0
	movei 1,1
	dmove 2,[0
		2]
	pushj 17,dadd1b
	adjsp 17,-1
	popj 17,

	ENTRY	dadd2
dadd2:
	; current_function_args_size = 8
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	dadd 1,3
	dadd 1,-2(17)
	popj 17,

	ENTRY	dadd2b
dadd2b:
	; current_function_args_size = 8
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 8
	; frame_pointer_needed = 0
	; callee-saved accumulator 5 clobbered
	; callee-saved accumulator 6 clobbered
	adjsp 17,4
	dmovem 5,-3(17)
	dmove 5,-4(17)
	dmovem 5,-1(17)
	pushj 17,dadd2
	dmove 5,-3(17)
	adjsp 17,-4
	popj 17,

	ENTRY	dadd2c
dadd2c:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 8
	; frame_pointer_needed = 0
	adjsp 17,2
	dmove 0,[0
		3]
	dmovem 0,-1(17)
	dmove 1,[0
		1]
	dmove 3,[0
		2]
	pushj 17,dadd2
	adjsp 17,-2
	popj 17,

	ENTRY	dadd3
dadd3:
	; current_function_args_size = 16
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	dadd 1,3
	dadd 1,-2(17)
	dadd 1,-4(17)
	popj 17,

	ENTRY	dadd3b
dadd3b:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 16
	; frame_pointer_needed = 0
	adjsp 17,4
	dmove 0,[0
		3]
	dmovem 0,-1(17)
	dmove 0,[0
		4]
	dmovem 0,-3(17)
	dmove 1,[0
		1]
	dmove 3,[0
		2]
	pushj 17,dadd3
	adjsp 17,-4
	popj 17,

	EXTERN	foo
	ENTRY	dadd3c
dadd3c:
	; current_function_args_size = 16
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 16
	; frame_pointer_needed = 0
	; callee-saved accumulator 5 clobbered
	; callee-saved accumulator 6 clobbered
	adjsp 17,6
	dmovem 5,-5(17)
	dmove 5,-6(17)
	dmovem 5,-1(17)
	dmove 5,-10(17)
	dmovem 5,-3(17)
	pushj 17,@[GIW foo*ONE]
	dmove 5,-5(17)
	adjsp 17,-6
	popj 17,

	EXTERN	foo
	ENTRY	swap1
swap1:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	exch 1,2
	pushj 17,@[GIW foo*ONE]
	popj 17,

	EXTERN	foo
	ENTRY	swap1b
swap1b:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	exch 1,2
	pushj 17,@[GIW foo*ONE]
	popj 17,

	ENTRY	swap2
swap2:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	move 3,(1)
	move 0,(2)
	movem 0,(1)
	movem 3,(2)
	popj 17,

	ENTRY	swap2b
swap2b:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	move 0,(1)
	exch 0,(2)
	movem 0,(1)
	popj 17,

	ENTRY	call1
call1:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	pushj 17,add9
	popj 17,

	ENTRY	call2
call2:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	pushj 17,add4
	popj 17,

	ENTRY	call3
call3:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	pushj 17,(2)
	popj 17,

	ENTRY	call4
call4:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	pushj 17,@[GIW 151]
	popj 17,

	ENTRY	call5
call5:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	exch 1,2
	pushj 17,add1
	popj 17,

	ENTRY	call6
call6:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	addi 1,1
	pushj 17,add1
	popj 17,

	ENTRY	call7
call7:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	addi 2,1
	pushj 17,add1
	popj 17,

	ENTRY	call8
call8:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	pushj 17,add1
	addi 1,1
	popj 17,

	ENTRY	call9
call9:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	; callee-saved accumulator 5 clobbered
	; callee-saved accumulator 6 clobbered
	adjsp 17,2
	dmovem 5,-1(17)
	move 5,1
	move 6,2
	move 1,6
	add 1,5
	move 2,5
	imul 2,6
	pushj 17,add1
	add 1,5
	add 1,6
	dmove 5,-1(17)
	adjsp 17,-2
	popj 17,

	EXTERN	foo
	ENTRY	call10
call10:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 4
	; frame_pointer_needed = 0
	adjsp 17,1
	movei 0,100
	movem 0,(17)
	movei 1,21
	movei 2,52
	movei 3,144
	movei 4,112
	pushj 17,@[GIW foo*ONE]
	adjsp 17,-1
	popj 17,

	EXTERN	foo
	ENTRY	call11
call11:
	; current_function_args_size = 4
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 4
	; frame_pointer_needed = 0
	adjsp 17,1
	move 0,-2(17)
	movem 0,(17)
	pushj 17,@[GIW foo*ONE]
	adjsp 17,-1
	popj 17,

	EXTERN	foo
	ENTRY	call12
call12:
	; current_function_args_size = 8
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 8
	; frame_pointer_needed = 0
	adjsp 17,2
	move 0,-3(17)
	movem 0,(17)
	move 0,-4(17)
	movem 0,-1(17)
	pushj 17,@[GIW foo*ONE]
	adjsp 17,-2
	popj 17,

	EXTERN	foo
	ENTRY	call13
call13:
	; current_function_args_size = 12
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 12
	; frame_pointer_needed = 0
	adjsp 17,3
	move 0,-4(17)
	movem 0,(17)
	move 0,-5(17)
	movem 0,-1(17)
	move 0,-6(17)
	movem 0,-2(17)
	pushj 17,@[GIW foo*ONE]
	adjsp 17,-3
	popj 17,

	ENTRY	call14
call14:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 4
	; frame_pointer_needed = 0
	adjsp 17,1
	movei 0,5
	movem 0,(17)
	movei 1,1
	movei 2,2
	movei 3,3
	movei 4,4
	pushj 17,add11
	adjsp 17,-1
	popj 17,

	ENTRY	call15
call15:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 8
	; frame_pointer_needed = 0
	adjsp 17,2
	movei 0,5
	movem 0,(17)
	movei 0,6
	movem 0,-1(17)
	movei 1,1
	movei 2,2
	movei 3,3
	movei 4,4
	pushj 17,add12
	adjsp 17,-2
	popj 17,

	ENTRY	varargs1
varargs1:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 16
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	adjsp 17,4
	move 0,-4(17)
	movem 0,(17)
	movem 4,-4(17)
	movem 3,-3(17)
	movem 2,-2(17)
	movem 1,-1(17)
	movei 1,0
	move 0,(17)
	movem 0,-4(17)
	adjsp 17,-4
	popj 17,

	ENTRY	varargs2
varargs2:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 12
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	adjsp 17,3
	move 0,-3(17)
	movem 0,(17)
	movem 4,-3(17)
	movem 3,-2(17)
	movem 2,-1(17)
	movei 1,0
	move 0,(17)
	movem 0,-3(17)
	adjsp 17,-3
	popj 17,

	ENTRY	varargs3
varargs3:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 8
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	adjsp 17,2
	move 0,-2(17)
	movem 0,(17)
	movem 4,-2(17)
	movem 3,-1(17)
	movei 1,0
	move 0,(17)
	movem 0,-2(17)
	adjsp 17,-2
	popj 17,

	ENTRY	varargs4
varargs4:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 4
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	adjsp 17,1
	move 0,-1(17)
	movem 0,(17)
	movem 4,-1(17)
	movei 1,0
	move 0,(17)
	movem 0,-1(17)
	adjsp 17,-1
	popj 17,

	ENTRY	varargs5
varargs5:
	; current_function_args_size = 4
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	movei 1,0
	popj 17,

	ENTRY	varargs6
varargs6:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	movei 1,1
	movei 2,2
	movei 3,3
	pushj 17,varargs1
	popj 17,

	ENTRY	varargs7
varargs7:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	movei 1,1
	movei 2,2
	movei 3,3
	movei 4,4
	pushj 17,varargs1
	popj 17,

	ENTRY	varargs8
varargs8:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 4
	; frame_pointer_needed = 0
	adjsp 17,1
	movei 0,5
	movem 0,(17)
	movei 1,1
	movei 2,2
	movei 3,3
	movei 4,4
	pushj 17,varargs1
	adjsp 17,-1
	popj 17,

	ENTRY	varargs9
varargs9:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 8
	; frame_pointer_needed = 0
	adjsp 17,2
	movei 0,5
	movem 0,(17)
	movei 0,6
	movem 0,-1(17)
	movei 1,1
	movei 2,2
	movei 3,3
	movei 4,4
	pushj 17,varargs1
	adjsp 17,-2
	popj 17,

	ENTRY	varargs10
varargs10:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 12
	; frame_pointer_needed = 0
	adjsp 17,3
	movei 0,5
	movem 0,(17)
	movei 0,6
	movem 0,-1(17)
	movei 0,7
	movem 0,-2(17)
	movei 1,1
	movei 2,2
	movei 3,3
	movei 4,4
	pushj 17,varargs1
	adjsp 17,-3
	popj 17,

	ENTRY	structret1
structret1:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	movei 1,1
	popj 17,

	ENTRY	structret2
structret2:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	movei 1,1
	movei 2,2
	popj 17,

