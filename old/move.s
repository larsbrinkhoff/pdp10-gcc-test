	TITLE	move.c
	.DIRECTIVE	KL10

DEFINE OWGBP (PS,Y)<	; one-word global byte pointer
<PS>B5+Y*ONE>
DEFINE GIW (Y)<Y*ONE>	; global indirect word
	.PSECT .text/ronly
gcc2.compiled:
gnu.c:
	.ENDPS
	.PSECT .text/ronly
	ENTRY	foo
foo:
	move 1,[1234567]
	popj 17,

	ENTRY	movei
movei:
	movei 1,123456
	popj 17,

	ENTRY	movsi
movsi:
	movsi 1,123456	; movsi
	popj 17,

	ENTRY	hrroi
hrroi:
	hrroi 1,123456	; movsi
	popj 17,

	ENTRY	hrroi2
hrroi2:
	hrroi 1,123456	; movsi
	popj 17,

	ENTRY	hrloi
hrloi:
	hrloi 1,123456	; movsi
	popj 17,

	ENTRY	andi
andi:
	andi 1,777777
	popj 17,

	ENTRY	tlz
tlz:
	tlz 1,654321	; and 1,[123456777777]
	popj 17,

	ENTRY	andcmi
andcmi:
	andcmi 1,123455	; and 1,[-123456]
	popj 17,

	.ENDPS
	END
