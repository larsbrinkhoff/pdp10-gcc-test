Ap:
	adjsp 17,2
	movei 1,-1(17)
	pushj 17,foo
	adjsp 17,-2
	popj 17,

Aa:
	move 1,(1)
	popj 17,

Ab:
	hlre 1,1(1)
	popj 17,

Bp:
	adjsp 17,2
	movei 1,-1(17)
	pushj 17,foo
	adjsp 17,-2
	popj 17,

Ba:
	move 1,(1)
	popj 17,

Bb:
	move 1,1(1)
	lsh 1,-33
	popj 17,

Cp:
	adjsp 17,1
	movei 1,(17)
	tlo 1,222200
	pushj 17,foo
	adjsp 17,-1
	popj 17,

Ca:
	hlre 1,(1)
	popj 17,

Cb:
	ldb 1,[POINT 9,(1),26]
	popj 17,

Dp:
	adjsp 17,1
	movei 1,(17)
	tlo 1,331100
	pushj 17,foo
	adjsp 17,-1
	popj 17,

Da:
	move 1,(1)
	lsh 1,-33
	popj 17,

Db:
	ldb 1,[POINT 9,(1),17]
	popj 17,
