pushj1:
	pushj 17,(1)
	popj 17,

pushj2:
	pushj 17,@[GIW foo]
	movei 1,0
	popj 17,

pushj3:
	pushj 17,pushj2
	movei 1,0
	popj 17,
