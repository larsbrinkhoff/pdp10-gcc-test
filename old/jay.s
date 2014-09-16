	TITLE	jay.c
	SEARCH	MONSYM

	.DIRECTIVE	KL10

DEFINE OWGBP(PS,Y)<	; one-word global byte pointer
<PS*10000,,0>+Y*ONE
>
DEFINE GIW (Y)<Y*ONE>	; global indirect word
	.PSECT .text/ronly
gcc2.compiled:
gnu.c:
	EXTERN	exit
	EXTERN	foo
	EXTERN	..main
	.ENDPS
	.PSECT .text/ronly
	ENTRY	main
main:
	pushj 17,@[GIW ..main]
	movni 1,1
	dpb 1,[OWGBP 55,n]
	dpb 1,[OWGBP 56,n]
	ldb 1,[OWGBP 55,n]
	move 4,1
	andi 4,777	; zero_extendqisi2
	ldb 1,[OWGBP 56,n]
	move 2,1
	andi 2,777	; zero_extendqisi2
	cain 4,377
	 jrst %L12
%L6:
	movei 1,777
	skipn 4
	 move 4,1	; movsicc
	cain 2,377
	 jrst %L13
%L8:
	skipn 2
	 move 2,1	; movsicc
	move 3,4
	xor 3,2
	skipe 3
	 movei 3,1	; sne
	addi 3,1
	hrre 3,3	; extendhisi2
	move 1,4
	pushj 17,@[GIW foo]
	popj 17,
%L13:
	movei 2,400
	jrst %L8
%L12:
	movei 4,400
	jrst %L6

	ENTRY	foo
foo:
	move 1,[GIW x]	; movpsi
	ibp 1
	popj 17,

	ENTRY	fun
fun:
	movei 1,0
	popj 17,

	ENTRY	bar
bar:
	movei 1,0
	popj 17,

	.ENDPS
	.PSECT .data/rwrite
	INTERN	n
n:
	BLOCK	3
	INTERN	x
x:
	BLOCK	1
	.ENDPS
	END
