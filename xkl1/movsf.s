movsf1:
	move 1,2	; movsf
	popj 17,

movsf2:
	move 1,(2)	; movsf
	popj 17,

movsf3:
	movei 1,0	; movsf
	popj 17,

movsf4:
	movsi 1,(1.23000000000000003525e2)	; movsf
	popj 17,

movsf5:
	move 1,[1.23456123000000002241e8]	; movsf
	popj 17,

movsf6:
	movem 1,(2)	; movsf
	popj 17,
