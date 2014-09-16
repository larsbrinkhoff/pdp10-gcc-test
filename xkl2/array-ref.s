load1Qint:
	adjbp 2,1
	extend 1,[ldbe 2]
	popj 17,

load2Qint:
	adjbp 1,[OWGBP 70,GIW AQint]
	extend 1,[ldbe 1]
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
	extend 1[ldbe 2]
	popj 17,

load2Hint:
	adjbp 1,[OWGBP 75,GIW AHint]
	extend 1,[ldb 1]
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
	move 1,ASint(1)
	popj 17,

store1Sint:
	add 1,2
	movem 3,(1)
	popj 17,

store2Sint:
	movem 2,ASint(1)
	popj 17,

load1Dint:
	lsh 2,1
	add 2,1
	dmove 1,(2)
	popj 17,

load2Dint:
	lsh 1,1
	dmove 1,ADint(1)
	popj 17,

store1Dint:
	lsh 2,1
	add 2,1
	dmovem 3,(2)
	popj 17,

store2Dint:
	lsh 1,1
	dmovem 2,ADint(1)
	popj 17,

load1Sfloat:
	add 1,2
	move 1,(1)	; movsf
	popj 17,

load2Sfloat:
	move 1,ASfloat(1)	; movsf
	popj 17,

store1Sfloat:
	add 1,2
	movem 3,(1)	; movsf
	popj 17,

store2Sfloat:
	movem 2,ASfloat(1)	; movsf
	popj 17,

load1Dfloat:
	lsh 2,1
	add 2,1
	dmove 1,(2)
	popj 17,

load2Dfloat:
	lsh 1,1
	dmove 1,ADfloat(1)
	popj 17,

store1Dfloat:
	lsh 2,1
	add 2,1
	dmovem 3,(2)
	popj 17,

store2Dfloat:
	lsh 1,1
	dmovem 2,ADfloat(1)
	popj 17,
