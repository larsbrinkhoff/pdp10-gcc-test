	TITLE	libc.c
	SEARCH	MONSYM

	.DIRECTIVE	KL10

DEFINE OWGBP(S,A)<	; one-word global byte pointer
A+<S*10000,,0>
>
DEFINE GIW (A)<A>	; global indirect word
	.PSECT .text

gcc2.compiled:
gnu.c:
	EXTERN	getchar
	.ENDPS
	.PSECT .text/ronly
	ENTRY	gets
gets:
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
	move 5,6
	pushj 17,@[GIW getchar*ONE]
	move 2,1
	movei 1,0
	camn 2,[-1]
	 jrst %L2
	cain 2,12
	 jrst %L12
	dpb 2,6
%L7:
	pushj 17,@[GIW getchar*ONE]
	move 2,1
	camn 2,[-1]
	 jrst %L8
	cain 2,12
	 jrst %L8
	ibp 5
	dpb 2,5
	jrst %L7
%L8:
	ibp 5
	movei 1,0
	dpb 1,5
%L13:
	move 1,6
%L2:
	dmove 5,-1(17)
	adjsp 17,-2
	popj 17,
%L12:
	movei 1,0
	dpb 1,6
	jrst %L13

	EXTERN	putchar
	ENTRY	puts
puts:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	; callee-saved accumulator 5 clobbered
	push 17,5
	move 5,1
	ldb 1,5
	jumpe 1,%L19
%L17:
	pushj 17,@[GIW putchar*ONE]
	ibp 5
	ldb 1,5
	jumpn 1,%L17
%L19:
	movei 1,0
	pop 17,5
	popj 17,

	ENTRY	puto
puto:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	; callee-saved accumulator 5 clobbered
	push 17,5
	move 5,1
	jumpe 5,%L24
	lsh 1,-3
	pushj 17,puto
	andi 5,7
	addi 5,60
	move 1,5
	pushj 17,@[GIW putchar*ONE]
%L22:
	pop 17,5
	popj 17,
%L24:
	movei 1,60
	pushj 17,@[GIW putchar*ONE]
	jrst %L22

	ENTRY	getchar
getchar:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	PBIN
	caie 1,15
	popj 17,
%L27:
	PBIN
	movei 1,12
	popj 17,

	
CRLF:	ASCIZ /
/

	ENTRY	putchar
putchar:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	move 2,1
	cain 2,12
	 jrst %L29
	PBOUT
	movei 1,0
	popj 17,
%L29:
	HRROI 1,CRLF
	PSOUT
	movei 1,0
	popj 17,

	ENTRY	..main
..main:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	popj 17,

	EXTERN	.exit
	ENTRY	exit
exit:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	pushj 17,@[GIW .exit*ONE]

	ENTRY	.exit
.exit:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
%L33:
	HALTF
	jrst %L33

	.ENDPS
	.PSECT .data/rwrite
	INTERN	errno
errno:
	BLOCK	1
	.ENDPS
	END
