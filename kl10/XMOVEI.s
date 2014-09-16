xmovei1:
	xmovei 17,1(17)
	setzm (17)
	pushj 17,@[GIW foo]
	xmovei 17,-1(17)
	popj 17,

xmovei2:
	xmovei 17,1(17)
	xmovei 1,(17)
	pushj 17,@[GIW foo]
	xmovei 17,-1(17)
	popj 17,

xmovei3:
	xmovei 17,2(17)
	dmovem 5,-1(17)
	dmove 5,1
	pushj 17,@[GIW clobber]
	dmove 1,5
	dmove 5,-1(17)
	xmovei 17,-2(17)
	popj 17,
