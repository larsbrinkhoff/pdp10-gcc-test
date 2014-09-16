	TITLE	ptr.c
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
	ENTRY	blah
blah:
	ibp 1(1)
	ibp 2(1)
	aos 3(1)
	movei 0,2
	addm 0,4(1)
	popj 17,

	.ENDPS
	END
