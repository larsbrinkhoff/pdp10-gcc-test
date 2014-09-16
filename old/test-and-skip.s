	TITLE	test-and-skip.c
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
	ENTRY	trne
trne:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	move 2,1
	movei 1,123
	trne 2,776
	popj 17,
%L5:
	movei 1,456
	popj 17,

	ENTRY	trne2
trne2:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	move 2,1
	movei 1,123
	trne 2,77000
	popj 17,
%L9:
	movei 1,456
	popj 17,

	ENTRY	tlne
tlne:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	move 2,1
	movei 1,123
	tlne 2,377770
	popj 17,
%L13:
	movei 1,456
	popj 17,

	ENTRY	tdne
tdne:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	move 3,1
	movei 1,123
	tdne 3,2
	popj 17,
%L17:
	movei 1,456
	popj 17,

	ENTRY	bar
bar:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	move 2,1
	movei 1,123
	trne 2,10203
	movei 1,456
%L18:
	popj 17,

	EXTERN	..builtin.test.and.set
	ENTRY	test.and.set
test.and.set:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	movei 4,0
	movei 3,1
	tdon 1,2
	movei 3,0
%L23:
	jumpe 3,%L24
%L22:
	move 1,4
	popj 17,
%L24:
	movei 4,1
	jrst %L22

