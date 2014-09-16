	TITLE	hello.c
	SEARCH	MONSYM

	.DIRECTIVE	KL10

gcc2.compiled:
gnu.c:

%LC0:
	BYTE (9)150,145,154,154
	BYTE (9)157,54,40,160
	BYTE (9)157,151,156,164
	BYTE (9)145,162,12,0

he.pointer:
	POINT 9,%LC0,8

he.array:
	BYTE (9)150,145,154,154
	BYTE (9)157,54,40,141
	BYTE (9)162,162,141,171
	BYTE (9)12,0

h:
	BYTE (27)0(9)150
e:
	BYTE (27)0(9)145
l:
	BYTE (27)0(9)154
o:
	BYTE (27)0(9)157
newline:
	BYTE (27)0(9)12
	EXTERN	puts
	EXTERN	putchar
	EXTERN	getchar
	EXTERN	..main

%LC1:
	BYTE (9)150,145,154,154
	BYTE (9)157,54,40,163
	BYTE (9)164,162,151,156
	BYTE (9)147,12,0%LC2:
,150
	BYTE (9)145,154,154,157
	BYTE (9)40,167,157,162
	BYTE (9)154,144,12,0

	ENTRY	main
main:
	; current_function_args_size = 0
	; current_function_pretend_args_size = 0
	; frame_size = 0
	; current_function_outgoing_args_size = 0
	; frame_pointer_needed = 0
	; callee-saved accumulator 5 clobbered
	push 17,5
	pushj 17,..main
	move 1,[POINT 9,%LC1,8]
	pushj 17,puts
	move 1,he.pointer
	pushj 17,puts
	move 1,[POINT 9,he.array,8]
	pushj 17,puts
	ldb 1,[POINT 9,h,35]
	pushj 17,putchar
	ldb 1,[POINT 9,e,35]
	pushj 17,putchar
	ldb 1,[POINT 9,l,35]
	pushj 17,putchar
	ldb 1,[POINT 9,l,35]
	pushj 17,putchar
	ldb 1,[POINT 9,o,35]
	pushj 17,putchar
	ldb 1,[POINT 9,newline,35]
	pushj 17,putchar
	movei 5,7
%L6:
	move 1,[POINT 9,%LC2,8]
	pushj 17,puts
	sojge 5,%L6
%L8:
	pushj 17,getchar
	move 2,1
	camn 2,[170]
	 jrst %L13
	pushj 17,putchar
	jrst %L8
%L13:
	movei 1,0
	pop 17,5
	popj 17,

	END
