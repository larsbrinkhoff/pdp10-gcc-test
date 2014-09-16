dmove1:
	move 1,3
	move 2,4
	popj 17,

dmove2:
	move 1,(3)
	move 2,1(3)
	popj 17,

dmove3:
	move 1,[123456123456]
	move 2,[654321654321]
	popj 17,

dmovem:
	movem 1,(3)
	movem 2,1(3)
	popj 17,
