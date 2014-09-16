extendsfdf2.0:
	popj 17,

extendsfdf2.2:
	move 1,(3)	; extendsfdf2
	movei 2,0	; extendsfdf2
	popj 17,

extendsfdf2.3:
	movem 1,(2)	; extendsfdf2
	setzm 1(2)	; extendsfdf2
	popj 17,
