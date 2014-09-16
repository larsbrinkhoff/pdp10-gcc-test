	TITLE	cmp.c
	SEARCH	MONSYM

	; OWGBP = one-word global byte pointer
	; GIW = global indirect word

gcc2.compiled:
gnu.c:

	ENTRY	se
se:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	; current_function_anonymous_args = 0
	xor 1,2
	movms 1
	subi 1,1
	lsh 1,-43
	popj 17,

	ENTRY	ue
ue:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	; current_function_anonymous_args = 0
	xor 1,2
	movms 1
	subi 1,1
	lsh 1,-43
	popj 17,

	ENTRY	sn
sn:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	; current_function_anonymous_args = 0
	xor 1,2
	movms 1
	movns 1
	lsh 1,-43
	popj 17,

	ENTRY	un
un:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	; current_function_anonymous_args = 0
	xor 1,2
	movms 1
	movns 1
	lsh 1,-43
	popj 17,

	ENTRY	sl
sl:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	; current_function_anonymous_args = 0
	movei 3,0
	caml 1,2
	 jrst %L11
	movei 3,1
%L11:
	move 1,3
	popj 17,

	ENTRY	ul
ul:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	; current_function_anonymous_args = 0
	movei 3,0
	tlc 1,400000
	tlc 2,400000
	caml 1,2
	 jrst %L13
	movei 3,1
%L13:
	move 1,3
	popj 17,

	ENTRY	sle
sle:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	; current_function_anonymous_args = 0
	movei 3,0
	camge 1,2
	 jrst %L15
	movei 3,1
%L15:
	move 1,3
	popj 17,

	ENTRY	ule
ule:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	; current_function_anonymous_args = 0
	movei 3,0
	tlc 1,400000
	tlc 2,400000
	camge 1,2
	 jrst %L17
	movei 3,1
%L17:
	move 1,3
	popj 17,

	ENTRY	sg
sg:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	; current_function_anonymous_args = 0
	movei 3,0
	camg 1,2
	 jrst %L19
	movei 3,1
%L19:
	move 1,3
	popj 17,

	ENTRY	ug
ug:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	; current_function_anonymous_args = 0
	movei 3,0
	tlc 1,400000
	tlc 2,400000
	camg 1,2
	 jrst %L21
	movei 3,1
%L21:
	move 1,3
	popj 17,

	ENTRY	sge
sge:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	; current_function_anonymous_args = 0
	movei 3,0
	camge 1,2
	 jrst %L23
	movei 3,1
%L23:
	move 1,3
	popj 17,

	ENTRY	uge
uge:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	; current_function_anonymous_args = 0
	movei 3,0
	tlc 1,400000
	tlc 2,400000
	camge 1,2
	 jrst %L25
	movei 3,1
%L25:
	move 1,3
	popj 17,

	END
