	TITLE	bigstruct.c
	SEARCH	MONSYM

	.DIRECTIVE	KL10

DEFINE OWGBP(S,A)<	; one-word global byte pointer
A+<S*10000,,0>
>
DEFINE GIW (A)<A>	; global indirect word
	.PSECT .text

gcc2.compiled:
gnu.c:
	.ENDPS
	.PSECT .text/ronly
	ENTRY	bar
bar:
	SETZM (1)
	SETZM 1(1)
	SETZM 123456(1)
	SETZM 377777(1)
	MOVE 2,[1000000]
	ADD 2,1
	SETZM -400000(2)
	SETZM -377777(2)
	SETZM -123457(2)
	SETZM -1(2)
	SETZM (2)
	MOVE 2,[1235000000]
	ADD 2,1
	SETZM -216544(2)
	MOVE 2,[12346000000]
	ADD 2,1
	SETZM -165433(2)
	SETZM -1(1)
	SETZM -123456(1)
	SETZM -377777(1)
	SETZM -400000(1)
	MOVE 2,[-1000000]
	ADD 2,1
	SETZM 377777(2)
	SETZM 123457(2)
	SETZM 1(2)
	SETZM (2)
	MOVE 2,[-1235000000]
	ADD 2,1
	SETZM 216544(2)
	MOVE 2,[-12346000000]
	ADD 2,1
	SETZM 165433(2)
	POPJ 17,

	.ENDPS
	END
