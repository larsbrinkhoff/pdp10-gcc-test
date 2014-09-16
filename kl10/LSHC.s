lshcl1:
	lshc 1,1
	popj 17,

lshcl2:
	lshc 1,(3)
	popj 17,

lshcl3:
	lshc 1,1(3)
	popj 17,

lshcr1:
	lshc 1,-1
	popj 17,

lshcr2:
	movn 3,3
	lshc 1,(3)
	popj 17,

lshcr3:
	lshc 1,(3)
	popj 17,

lshcr4:
	setca 3,
	lshc 1,(3)
	popj 17,

lshcr5:
	lshc 1,-1(3)
	popj 17,
