rotcl1:
	rotc 1,1
	popj 17,

rotcl2:
	rotc 1,(3)
	popj 17,

rotcl3:
	rotc 1,1(3)
	popj 17,

rotcr1:
	rotc 1,-1
	popj 17,

rotcr2:
	movn 3,3
	rotc 1,(3)
	popj 17,

rotcr3:
	rotc 1,(3)
	popj 17,

rotcr4:
	movei 4,107
	sub 4,3
	rotc 1,(4)
	popj 17,

rotcr5:
	rotc 1,-1(3)
	popj 17,
