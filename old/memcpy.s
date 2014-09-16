	TITLE	memcpy.c
	.DIRECTIVE	KL10

DEFINE OWGBP (PS,Y)<	; one-word global byte pointer
<PS>B5+Y*ONE>
DEFINE GIW (Y)<Y*ONE>	; global indirect word
	.PSECT .text/ronly
gcc2.compiled:
gnu.c:
	.ENDPS
	.PSECT .text/ronly
	ENTRY	cpy1
cpy1:
	adjsp 17,3
	dmovem 5,-2(17)
	movem 7,(17)
	movei 4,100
	move 5,2	; movpsi
	move 6,1	; movpsi
	extend 4,[xblt]
	dmove 5,-2(17)
	move 7,(17)
	adjsp 17,-3
	popj 17,

	ENTRY	cpy1b
cpy1b:
	push 17,5
	movei 2,100
	move 3,1	; movpsi
	move 4,[GIW X]	; movpsi
	extend 2,[xblt]
	pop 17,5
	popj 17,

	EXTERN	memcpy
	ENTRY	cpy2
cpy2:
	adjsp 17,3
	dmovem 5,-2(17)
	movem 7,(17)
	movei 4,12
	move 5,2	; movpsi
	move 6,1	; movpsi
	extend 4,[xblt]
	dmove 5,-2(17)
	move 7,(17)
	adjsp 17,-3
	popj 17,

	EXTERN	memcpy
	ENTRY	cpy3b
cpy3b:
	movei 1,40	; movpsi
	movei 2,4000	; movpsi
	movei 3,400
	pushj 17,@[GIW memcpy]
	popj 17,

	ENTRY	cpy3
cpy3:
	pushj 17,@[GIW memcpy]
	popj 17,

	ENTRY	cpy4
cpy4:
	pushj 17,@[GIW memcpy]
	popj 17,

	EXTERN	memset
	ENTRY	clr1
clr1:
	push 17,5
	movei 2,100
	move 3,1	; movpsi
	movei 4,1(1)	; movpsi
	setzm (1)
	extend 2,[xblt]
	pop 17,5
	popj 17,

	ENTRY	clr1b
clr1b:
	push 17,5
	move 1,[GIW X]	; movpsi
	movei 2,100
	move 3,1	; movpsi
	movei 4,1(1)	; movpsi
	setzm @[GIW X]
	extend 2,[xblt]
	pop 17,5
	popj 17,

	ENTRY	clr2
clr2:
	push 17,5
	movei 2,12
	move 3,1	; movpsi
	movei 4,1(1)	; movpsi
	setzm (1)
	extend 2,[xblt]
	pop 17,5
	popj 17,

	.ENDPS
	.PSECT .data/rwrite
	INTERN	X
X:
	BLOCK	100
	.ENDPS
	END
