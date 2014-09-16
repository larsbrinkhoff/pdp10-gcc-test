push.prologue:
	push 17,5
	move 5,1
	pushj 17,clobber
	move 1,5
	pop 17,5
	popj 17,

pushsi.reg:
	push 1,2
	popj 17,

pushsi.mem:
	push 1,(2)
	popj 17,

pushsf.reg:
	push 1,2
	popj 17,

pushsf.mem:
	push 1,(2)
	popj 17,
