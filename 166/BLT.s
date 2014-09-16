blt1:
	move 1,[b,,a]
	blt 1,a+77
	popj 17,

blt2:
	move 1,[a,,a+1]
	setzm a
	blt 1,a+77
	popj 17,

blt3:
	movei 3,(1)
	hrl 3,2
	blt 3,77(1)
	popj 17,

blt4:
	movs 2,1
	hrri 2,1(1)
	setzm (1)
	blt 2,77(1)
	popj 17,
