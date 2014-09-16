	TITLE	char.c
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
	ENTRY	ldb
ldb:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	; current_function_anonymous_args = 0
	ldb 1,1
	lsh 1,33
	ash 1,-33
	popj 17,

	ENTRY	dpb
dpb:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	; current_function_anonymous_args = 0
	dpb 2,1
	popj 17,

	ENTRY	move
move:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	; current_function_anonymous_args = 0
	move 1,2
	lsh 1,33
	ash 1,-33
	popj 17,

	ENTRY	movei
movei:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	; current_function_anonymous_args = 0
	movei 1,52
	popj 17,

	ENTRY	movei.dpb
movei.dpb:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	; current_function_anonymous_args = 0
	movei 2,52
	dpb 2,1
	popj 17,

	ENTRY	ldp.dpb
ldp.dpb:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	; current_function_anonymous_args = 0
	ldb 2,2
	dpb 2,1
	popj 17,

	.ENDPS
	END
