	TITLE	div.c
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
	ENTRY	idiv
idiv:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	move 3,1
	idiv 3,2
	move 1,3
	popj 17,

	ENTRY	div
div:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	; callee-saved accumulator 5 clobbered
	; callee-saved accumulator 6 clobbered
	; callee-saved accumulator 7 clobbered
	; callee-saved accumulator 10 clobbered
	; callee-saved accumulator 11 clobbered
	adjsp 17,5
	dmovem 5,-4(17)
	dmovem 7,-2(17)
	movem 11,(17)
	move 5,3
	ash 3,-43
	move 4,3
	dmove 6,1
	ddiv 6,4
	dmove 1,6
	move 1,2
	dmove 5,-4(17)
	dmove 7,-2(17)
	move 11,(17)
	adjsp 17,-5
	popj 17,

	ENTRY	div72
div72:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	; callee-saved accumulator 5 clobbered
	; callee-saved accumulator 6 clobbered
	; callee-saved accumulator 7 clobbered
	; callee-saved accumulator 10 clobbered
	adjsp 17,4
	dmovem 5,-3(17)
	dmovem 7,-1(17)
	dmove 5,1
	ddiv 5,3
	dmove 1,5
	dmove 5,-3(17)
	dmove 7,-1(17)
	adjsp 17,-4
	popj 17,

	ENTRY	ddiv
ddiv:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	; callee-saved accumulator 5 clobbered
	; callee-saved accumulator 6 clobbered
	; callee-saved accumulator 7 clobbered
	; callee-saved accumulator 10 clobbered
	; callee-saved accumulator 11 clobbered
	adjsp 17,5
	dmovem 5,-4(17)
	dmovem 7,-2(17)
	movem 11,(17)
	move 5,1
	ash 1,-43
	move 4,1
	dmove 6,4
	ddiv 6,2
	dmove 1,6
	dmove 5,-4(17)
	dmove 7,-2(17)
	move 11,(17)
	adjsp 17,-5
	popj 17,

	.ENDPS
	END
