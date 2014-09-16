	TITLE	timing.c
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
	ENTRY	op
op:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	popj 17,

	EXTERN	..main
	ENTRY	main
main:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	; callee-saved accumulator 5 clobbered
	push 17,5
	pushj 17,@[GIW ..main]
	movei 5,1747
%L7:
	pushj 17,op
	subi 5,1
	jumpge 5,%L7
	movei 1,0
	pop 17,5
	popj 17,

	.ENDPS
	END
