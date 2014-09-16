pop.prologue:
	push 17,5
	move 5,1
	pushj 17,clobber
	move 1,5
	pop 17,5
	popj 17,

popsi.mem:
	move 0,(1)
	movem 0,(2)
	subi 1,1
	popj 17,

popsf.mem:
	move 0,(1)	; movsf
	movem 0,(2)	; movsf
	subi 1,1
	popj 17,

popsi.combine:
	subi 1,1
	move 0,1(1)
	movem 0,(2)
	popj 17,

popsf.combine:
	subi 1,1
	move 0,1(1)	; movsf
	movem 0,(2)	; movsf
	popj 17,
