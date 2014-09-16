load1Qint:
	adjbp 2,1
	ldb 1,2
	trne 1,400
	 orcmi 1,777
	popj 17,

load2Qint:
	adjbp 1,[OWGBP 70,GIW AQint]
	ldb 1,1
	trne 1,400
	 orcmi 1,777
	popj 17,

store1Qint:
	adjbp 2,1
	dpb 3,2
	popj 17,

store2Qint:
	adjbp 1,[OWGBP 70,GIW AQint]
	dpb 2,1
	popj 17,

load1uQint:
	adjbp 2,1
	ldb 1,2
	popj 17,

load2uQint:
	adjbp 1,[OWGBP 70,GIW AuQint]
	ldb 1,1
	popj 17,

store1uQint:
	adjbp 2,1
	dpb 3,2
	popj 17,

store2uQint:
	adjbp 1,[OWGBP 70,GIW AuQint]
	dpb 2,1
	popj 17,

load1Hint:
	adjbp 2,1
	ldb 1,2
	hrrei 1,(1)
	popj 17,

load2Hint:
	adjbp 1,[OWGBP 75,GIW AHint]
	ldb 1,1
	hrrei 1,(1)
	popj 17,

store1Hint:
	adjbp 2,1
	dpb 3,2	; movhi
	popj 17,

store2Hint:
	adjbp 1,[OWGBP 75,GIW AHint]
	dpb 2,1	; movhi
	popj 17,

load1uHint:
	adjbp 2,1
	ldb 1,2
	popj 17,

load2uHint:
	adjbp 1,[OWGBP 75,GIW AuHint]
	ldb 1,1
	popj 17,

store1uHint:
	adjbp 2,1
	dpb 3,2	; movhi
	popj 17,

store2uHint:
	adjbp 1,[OWGBP 75,GIW AuHint]
	dpb 2,1	; movhi
	popj 17,

load1Sint:
	add 1,2
	move 1,(1)
	popj 17,

load2Sint:
	add 1,[GIW ASint]
	move 1,(1)
	popj 17,

store1Sint:
	add 1,2
	movem 3,(1)
	popj 17,

store2Sint:
	add 1,[GIW ASint]
	movem 2,(1)
	popj 17,

load1Dint:
	lsh 2,1
	add 2,1
	dmove 1,(2)
	popj 17,

load2Dint:
	lsh 1,1
	add 1,[GIW ADint]
	dmove 1,(1)
	popj 17,

store1Dint:
	lsh 2,1
	add 2,1
	dmovem 3,(2)
	popj 17,

store2Dint:
	lsh 1,1
	add 1,[GIW ADint]
	dmovem 2,(1)
	popj 17,

load1Sfloat:
	add 1,2
	move 1,(1)	; movsf
	popj 17,

load2Sfloat:
	add 1,[GIW ASfloat]
	move 1,(1)	; movsf
	popj 17,

store1Sfloat:
	add 1,2
	movem 3,(1)	; movsf
	popj 17,

store2Sfloat:
	add 1,[GIW ASfloat]
	movem 2,(1)	; movsf
	popj 17,

load1Dfloat:
	lsh 2,1
	add 2,1
	dmove 1,(2)
	popj 17,

load2Dfloat:
	lsh 1,1
	add 1,[GIW ADfloat]
	dmove 1,(1)
	popj 17,

store1Dfloat:
	lsh 2,1
	add 2,1
	dmovem 3,(2)
	popj 17,

store2Dfloat:
	lsh 1,1
	add 1,[GIW ADfloat]
	dmovem 2,(1)
	popj 17,
