pop.prologue:
	push 17,5
	move 5,1
	pushj 17,@[GIW clobber]
	move 1,5
	pop 17,5
	popj 17,

popsi.mem:
	pop 1,(2)
	popj 17,

popsf.mem:
	pop 1,(2)
	popj 17,

popsi.combine:
	pop 1,(2)
	popj 17,

popsf.combine:
	pop 1,(2)
	popj 17,
