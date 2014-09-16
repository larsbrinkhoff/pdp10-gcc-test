adjsp1:
	adjsp 17,1
	setzm (17)
	pushj 17,foo
	adjsp 17,-1
	popj 17,

adjsp2:
	adjsp 17,1
	movei 1,(17)
	pushj 17,foo
	adjsp 17,-1
	popj 17,

adjsp3:
	adjsp 17,2
	dmovem 5,-1(17)
	dmove 5,1
	pushj 17,clobber
	dmove 1,5
	dmove 5,-1(17)
	adjsp 17,-2
	popj 17,
