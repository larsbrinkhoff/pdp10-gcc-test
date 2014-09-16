	TITLE	aoj.c
	SEARCH	MONSYM

	.DIRECTIVE	KL10

DEFINE OWGBP(S,A)<	; one-word global byte pointer
A+<S*10000,,0>
>
DEFINE GIW (A)<A>	; global indirect word
	.PSECT .text

gcc2.compiled:
gnu.c:
	EXTERN	foo
	.ENDPS
	.PSECT .text/ronly
	ENTRY	decrement.and.branch.until.zero
decrement.and.branch.until.zero:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	; callee-saved accumulator 5 clobbered
	; callee-saved accumulator 6 clobbered
	adjsp 17,2
	dmovem 5,-1(17)
	move 6,1
	movei 5,143
%L6:
	move 1,6
	pushj 17,@[GIW foo*ONE]
	sojge 5,%L6
	dmove 5,-1(17)
	adjsp 17,-2
	popj 17,

	ENTRY	sojg
sojg:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	; callee-saved accumulator 5 clobbered
	push 17,5
	movei 5,144
%L13:
	move 1,5
	pushj 17,@[GIW foo*ONE]
	sojg 5,%L13
	pop 17,5
	popj 17,

	ENTRY	sojl
sojl:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	; callee-saved accumulator 5 clobbered
	push 17,5
	movni 5,144
%L20:
	move 1,5
	pushj 17,@[GIW foo*ONE]
	sojl 5,%L20
	pop 17,5
	popj 17,

	ENTRY	sojge
sojge:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	; callee-saved accumulator 5 clobbered
	push 17,5
	movei 5,144
%L27:
	move 1,5
	pushj 17,@[GIW foo*ONE]
	sojge 5,%L27
	pop 17,5
	popj 17,

	ENTRY	sojle
sojle:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	; callee-saved accumulator 5 clobbered
	push 17,5
	movni 5,144
%L34:
	move 1,5
	pushj 17,@[GIW foo*ONE]
	sojle 5,%L34
	pop 17,5
	popj 17,

	ENTRY	soje
soje:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	popj 17,

	EXTERN	bar
	ENTRY	sojn
sojn:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	; callee-saved accumulator 5 clobbered
	push 17,5
	move 5,@[GIW bar]
	jumpe 5,%L50
%L48:
	move 1,5
	pushj 17,@[GIW foo*ONE]
	subi 5,1
	jumpn 5,%L48
%L50:
	pop 17,5
	popj 17,

	ENTRY	aojl
aojl:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	; callee-saved accumulator 5 clobbered
	push 17,5
	movni 5,144
%L55:
	move 1,5
	pushj 17,@[GIW foo*ONE]
	aojl 5,%L55
	pop 17,5
	popj 17,

	ENTRY	aojle
aojle:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	; callee-saved accumulator 5 clobbered
	push 17,5
	movni 5,144
%L62:
	move 1,5
	pushj 17,@[GIW foo*ONE]
	aojle 5,%L62
	pop 17,5
	popj 17,

	ENTRY	aojn
aojn:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	; callee-saved accumulator 5 clobbered
	push 17,5
	move 5,@[GIW bar]
	jumpe 5,%L71
%L69:
	move 1,5
	pushj 17,@[GIW foo*ONE]
	addi 5,1
	jumpn 5,%L69
%L71:
	pop 17,5
	popj 17,

	ENTRY	aoje
aoje:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	popj 17,

	ENTRY	aojg
aojg:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	; callee-saved accumulator 5 clobbered
	push 17,5
	movei 5,144
%L83:
	move 1,5
	pushj 17,@[GIW foo*ONE]
	aojg 5,%L83
	pop 17,5
	popj 17,

	ENTRY	aojge
aojge:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	; callee-saved accumulator 5 clobbered
	push 17,5
	movei 5,144
%L90:
	move 1,5
	pushj 17,@[GIW foo*ONE]
	aojge 5,%L90
	pop 17,5
	popj 17,

	ENTRY	soj2g
soj2g:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	sojle 1,%L93
%L95:
	pushj 17,@[GIW foo*ONE]
%L93:
	popj 17,

	ENTRY	soj2l
soj2l:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	sojl 1,%L99
%L98:
	popj 17,
%L99:
	pushj 17,@[GIW foo*ONE]
	popj 17,

	ENTRY	soj2ge
soj2ge:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	sojl 1,%L100
%L102:
	pushj 17,@[GIW foo*ONE]
%L100:
	popj 17,

	ENTRY	soj2le
soj2le:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	sojle 1,%L106
%L105:
	popj 17,
%L106:
	pushj 17,@[GIW foo*ONE]
	popj 17,

	ENTRY	soj2e
soj2e:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	came 1,[1]
%L109:
	popj 17,
%L110:
	movei 1,0
	pushj 17,@[GIW foo*ONE]
	popj 17,

	ENTRY	soj2n
soj2n:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	subi 1,1
	jumpe 1,%L111
%L113:
	pushj 17,@[GIW foo*ONE]
%L111:
	popj 17,

	ENTRY	aoj2g
aoj2g:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	aojle 1,%L114
%L116:
	pushj 17,@[GIW foo*ONE]
%L114:
	popj 17,

	ENTRY	aoj2l
aoj2l:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	aojl 1,%L120
%L119:
	popj 17,
%L120:
	pushj 17,@[GIW foo*ONE]
	popj 17,

	ENTRY	aoj2ge
aoj2ge:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	aojl 1,%L121
%L123:
	pushj 17,@[GIW foo*ONE]
%L121:
	popj 17,

	ENTRY	aoj2le
aoj2le:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	aojle 1,%L127
%L126:
	popj 17,
%L127:
	pushj 17,@[GIW foo*ONE]
	popj 17,

	ENTRY	aoj2e
aoj2e:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	came 1,[-1]
%L130:
	popj 17,
%L131:
	movei 1,0
	pushj 17,@[GIW foo*ONE]
	popj 17,

	ENTRY	aoj2n
aoj2n:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	addi 1,1
	jumpe 1,%L132
%L134:
	pushj 17,@[GIW foo*ONE]
%L132:
	popj 17,

	.ENDPS
	END
