	TITLE	muldi3.c
	SEARCH	MONSYM

	.DIRECTIVE	KL10

DEFINE OWGBP(S,A)<	; one-word global byte pointer
A+<S*10000,,0>
>
DEFINE GIW (A)<A>	; global indirect word
	.PSECT .text

gcc2.compiled:
gnu.c:
	EXTERN	..umulsidi3
	.ENDPS
	.PSECT .text/ronly
	ENTRY	..muldi3
..muldi3:
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
	; callee-saved accumulator 12 clobbered
	adjsp 17,6
	dmovem 5,-5(17)
	dmovem 7,-3(17)
	dmovem 11,-1(17)
	move 10,2
	move 7,1
	move 12,4
	move 11,3
	move 1,2
	move 2,4
	pushj 17,@[GIW ..umulsidi3*ONE]
	move 3,1
	ash 1,-43
	move 2,1
	move 6,3
	move 5,2
	move 1,10
	imul 1,11
	move 2,7
	imul 2,12
	add 1,2
	add 5,1
	dmove 1,5
	dmove 5,-5(17)
	dmove 7,-3(17)
	dmove 11,-1(17)
	adjsp 17,-6
	popj 17,

	.ENDPS
	END
