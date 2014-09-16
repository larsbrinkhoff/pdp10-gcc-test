lshl1:
	lsh 1,1
	popj 17,

lshl2:
	lsh 1,(2)
	popj 17,

lshl3:
	lsh 1,1(2)
	popj 17,

lshr1:
	lsh 1,-1
	popj 17,

lshr2:
	movn 2,2
	lsh 1,(2)
	popj 17,

lshr3:
	lsh 1,(2)
	popj 17,

lshr4:
	setca 2,
	lsh 1,(2)
	popj 17,

lshr5:
	lsh 1,-1(2)
	popj 17,
