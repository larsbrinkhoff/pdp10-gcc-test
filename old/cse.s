	TITLE	cse.c
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
	ENTRY	foo1
foo1:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	ior 1,[1234567]
	popj 17,

	ENTRY	foo2
foo2:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	ior 1,[1234567]
	ior 2,[1234567]
	add 1,2
	popj 17,

	ENTRY	foo3
foo3:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	ior 1,[1234567]
	ior 2,[1234567]
	ior 3,[1234567]
	add 1,2
	add 1,3
	popj 17,

	ENTRY	foo4
foo4:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	ior 1,[1234567]
	ior 2,[1234567]
	ior 3,[1234567]
	ior 4,[1234567]
	add 1,2
	add 1,3
	add 1,4
	popj 17,

	ENTRY	bar1
bar1:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	iori 1,123456
	popj 17,

	ENTRY	bar2
bar2:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	iori 1,123456
	iori 2,123456
	add 1,2
	popj 17,

	.ENDPS
	END
