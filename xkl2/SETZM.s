setzm1:
	setzm (1)
	popj 17,

setzm2:
	setzm (1)	; movsf
	popj 17,

setzm3:
	setzm (1)	; movdf
	setzm 1(1)	; movdf
	popj 17,
