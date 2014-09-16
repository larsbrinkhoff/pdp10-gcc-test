blt1:
	movei 1,100
	movei 2,b
	movei 3,a
	extend 1,[xblt]
	popj 17,

blt2:
	movei 1,100
	movei 2,a
	xmovei 3,1(2)
	setzm (2)
	extend 1,[xblt]
	popj 17,

blt3:
	push 17,5
	movei 3,100
	move 4,2
	move 5,1
	extend 3,[xblt]
	pop 17,5
	popj 17,

blt4:
	movei 2,100
	move 3,1
	xmovei 4,1(1)
	setzm (1)
	extend 2,[xblt]
	popj 17,
