rotl1:
	rot 1,1
	popj 17,

rotl2:
	rot 1,(2)
	popj 17,

rotl3:
	rot 1,1(2)
	popj 17,

rotr1:
	rot 1,-1
	popj 17,

rotr2:
	movn 2,2
	rot 1,(2)
	popj 17,

rotr3:
	rot 1,(2)
	popj 17,

rotr4:
	movei 3,43
	sub 3,2
	rot 1,(3)
	popj 17,

rotr5:
	rot 1,-1(2)
	popj 17,
