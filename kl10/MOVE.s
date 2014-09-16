move1:
	move 1,2
	popj 17,

move2:
	move 1,(2)
	popj 17,

movei:
	movei 1,123456
	popj 17,

move3:
	skipa 1,.+1
	 123456123456
	popj 17,

movem:
	movem 1,(2)
	popj 17,
