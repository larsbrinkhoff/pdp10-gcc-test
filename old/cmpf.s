	TITLE	cmpf.c
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
	ENTRY	cmpfloat
cmpfloat:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	movei 3,42
	caml 1,2
	movei 3,666
%L4:
	move 1,3
	popj 17,

	ENTRY	cmpdouble
cmpdouble:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	dfsb 1,3
	movei 3,42
	jumpl 1,%L8
	movei 3,666
%L8:
	move 1,3
	popj 17,

	ENTRY	add1
add1:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	fadri 1,(1.00000000000000000000e0)
	movei 2,0
	dfad 1,[2.00000000000000000000e0]
	popj 17,

	ENTRY	add2
add2:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	movei 2,0
	dfad 1,[3.00000000000000000000e0]
	popj 17,

	.ENDPS
	END
