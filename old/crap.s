	TITLE	crap.c
	SEARCH	MONSYM

	.DIRECTIVE	KL10

DEFINE OWGBP(PS,Y)<	; one-word global byte pointer
<PS*10000,,0>+Y*ONE
>
DEFINE GIW (Y)<Y*ONE>	; global indirect word
	.PSECT .text/ronly
gcc2.compiled:
gnu.c:
	.ENDPS
	.PSECT .text/ronly
	ENTRY	crap1
crap1:
	and 1,2
	addi 1,1
	popj 17,

	ENTRY	crap2
crap2:
	addi 1,1
	and 1,2
	popj 17,

	.ENDPS
	END
