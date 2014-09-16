	TITLE	bad.c
	SEARCH	MONSYM

	.DIRECTIVE	KL10

DEFINE OWGBP(S,A)<	; one-word global byte pointer
A+<S*10000,,0>
>
DEFINE GIW (A)<A>	; global indirect word
	.PSECT .text

gcc2.compiled:
gnu.c:
	.ENDPS
	.PSECT .text/ronly
	ENTRY	dadd1b
dadd1b:
	; current_function_args_size = 8
	; current_function_pretend_args_size = 4
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	; current_function_anonymous_args = 0
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
	; current_function_anonymous_args = 0
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

	ENTRY	foo
foo:
	; current_function_args_size = 28
	; current_function_pretend_args_size = 12
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	; current_function_anonymous_args = 0
	adjsp 17,3
	move 0,-3(17)
	movem 0,(17)
	movem 4,-3(17)
	movem 3,-2(17)
	movem 2,-1(17)
	movem 2,-7(17)
	add 1,2
	add 1,3
	add 1,4
	add 1,-4(17)
	add 1,-3(17)
	add 1,-2(17)
	add 1,-1(17)
	move 0,(17)
	movem 0,-3(17)
	adjsp 17,-3
	popj 17,

	.ENDPS
	.PSECT .rodata/ronly
%LC0:
	2
	3
	4
	5
	6
	7
	10
	.ENDPS
	.PSECT .text/ronly
	ENTRY	bar
bar:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 16
	; frame_pointer_needed = 0
	; current_function_anonymous_args = 0
	adjsp 17,4
	dmove 0,@[GIW %LC0+3]
	dmovem 0,-6(17)
	dmove 0,@[GIW %LC0+5]
	dmovem 0,-4(17)
	move 2,@[GIW %LC0]
	move 3,@[GIW %LC0+1]
	move 4,@[GIW %LC0+2]
	movei 1,1
	pushj 17,foo
	adjsp 17,-4
	popj 17,

	ENTRY	fooc
fooc:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	; current_function_anonymous_args = 0
	adjsp 17,0
	andi 1,777
	move 3,2
	lsh 3,-33
	add 1,3
	add 1,2
	andi 1,777
	adjsp 17,0
	popj 17,

	EXTERN	dadd2
	ENTRY	dadd2b
dadd2b:
	; current_function_args_size = 8
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 8
	; frame_pointer_needed = 0
	; current_function_anonymous_args = 0
	; callee-saved accumulator 5 clobbered
	; callee-saved accumulator 6 clobbered
	adjsp 17,4
	dmovem 5,-3(17)
	dmove 5,-4(17)
	dmovem 5,-1(17)
	pushj 17,@[GIW dadd2]
	dmove 5,-3(17)
	adjsp 17,-4
	popj 17,

	EXTERN	frob.ptr
	EXTERN	alloca
	ENTRY	alloca1
alloca1:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 1
	; current_function_anonymous_args = 0
	; callee-saved accumulator 5 clobbered
	; callee-saved accumulator 16 clobbered
	adjsp 17,2
	movem 5,-1(17)
	movem 16,(17)
	move 16,pdp10.c:1977:UNALIGNED:(17)
	move 5,17
	adjsp 17,14
	movei 2,pdp10.c:1977:UNALIGNED:(5)
	movei 1,(2)
	lsh 1,-2
	imuli 1,4
	pushj 17,@[GIW frob.ptr]
	move 17,5
	move 5,-1(17)
	move 16,(17)
	adjsp 17,-2
	popj 17,

	ENTRY	alloca2
alloca2:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 1
	; current_function_anonymous_args = 0
	; callee-saved accumulator 5 clobbered
	; callee-saved accumulator 16 clobbered
	adjsp 17,2
	movem 5,-1(17)
	movem 16,(17)
	move 16,pdp10.c:1977:UNALIGNED:(17)
	move 5,17
	movei 1,pdp10.c:1977:UNALIGNED:1(1)
	movni 2,2
	lsh 1,(2)
	imuli 1,4
	ash 1,2
	adjsp 17,(1)
	movei 3,pdp10.c:1977:UNALIGNED:(5)
	movei 1,(3)
	lsh 1,(2)
	imuli 1,4
	pushj 17,@[GIW frob.ptr]
	move 17,5
	move 5,-1(17)
	move 16,(17)
	adjsp 17,-2
	popj 17,

	.ENDPS
	END
