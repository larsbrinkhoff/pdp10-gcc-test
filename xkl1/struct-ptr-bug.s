Ap:
	xmovei 17,2(17)
	xmovei 1,-1(17)
	pushj 17,foo
	xmovei 17,-2(17)
	popj 17,

Aa:
	move 1,(1)
	popj 17,

Ab:
	hlre 1,1(1)
	popj 17,

Bp:
	xmovei 17,2(17)
	xmovei 1,-1(17)
	pushj 17,foo
	xmovei 17,-2(17)
	popj 17,

Ba:
	move 1,(1)
	popj 17,

Bb:
	move 1,1(1)
	lsh 1,-33
	popj 17,

Cp:
	xmovei 17,1(17)
	xmovei 1,(17)
	tlo 1,750000
	pushj 17,foo
	xmovei 17,-1(17)
	popj 17,

Ca:
	tlz 1,770000
	hlre 1,(1)
	popj 17,

Cb:
	tlz 1,770000
	ldb 1,[POINT 9,(1),26]
	popj 17,

Dp:
	xmovei 17,1(17)
	xmovei 1,(17)
	tlo 1,700000
	pushj 17,foo
	xmovei 17,-1(17)
	popj 17,

Da:
	tlz 1,770000
	move 1,(1)
	lsh 1,-33
	popj 17,

Db:
	tlz 1,770000
	ldb 1,[POINT 9,(1),17]
	popj 17,
