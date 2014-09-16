	TITLE	jffo.c
	.DIRECTIVE	KL10

DEFINE OWGBP (PS,Y)<	; one-word global byte pointer
<PS>B5+Y*ONE>
DEFINE GIW (Y)<Y*ONE>	; global indirect word
	.PSECT .text/ronly
gcc2.compiled:
gnu.c:
	EXTERN	..builtin.jffo
	.ENDPS
	.PSECT .text/ronly
	ENTRY	JFFO
JFFO:
	move 2,1
	jffo 2,%L3
	hrloi 1,0	; movsi
	popj 17,
%L3:
	move 1,3
	popj 17,

	EXTERN	..builtin.ffs
	ENTRY	FFS
FFS:
	movn 2,1
	move 3,1
	and 3,2
	jffo 3,%L5
	movei 4,44
%L5:
	move 1,4
	subi 1,44
	movn 1,1
	popj 17,

	.ENDPS
	END
