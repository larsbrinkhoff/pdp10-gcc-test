	TITLE FOO

	; OWGBP = one-word global byte pointer
	; GIW = global indirect word

gcc2_compiled.:
__gnu_compiled_c:
.text
	.align	0
	.global	add
add:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	; current_function_anonymous_args = 0
	add 1,2
	jrst (16)

END FOO
