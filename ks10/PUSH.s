push.prologue:
	push 17,5
	move 5,1
	pushj 17,clobber
	move 1,5
	pop 17,5
	popj 17,

pushsi.reg:
	addi 1,1
	movem 2,(1)
	popj 17,

pushsi.mem:
	addi 1,1
	move 2,(2)
	movem 2,(1)
	popj 17,

pushsf.reg:
	addi 1,1
	movem 2,(1)	; movsf
	popj 17,

pushsf.mem:
	addi 1,1
	move 2,(2)	; movsf
	movem 2,(1)	; movsf
	popj 17,
