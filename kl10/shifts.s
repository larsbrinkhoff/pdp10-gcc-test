ashl:
	lsh 1,1
	popj 17,

lshl:
	lsh 1,1
	popj 17,

smul:
	lsh 1,1
	popj 17,

umul:
	lsh 1,1
	popj 17,

ashr:
	ash 1,-1
	popj 17,

lshr:
	lsh 1,-1
	popj 17,

sdiv2:
	move 2,1
	lsh 2,-43
	add 1,2
	ash 1,-1
	popj 17,

udiv2:
	lsh 1,-1
	popj 17,

sdiv4:
	jumpl 1,%L11
%L10:
	ash 1,-2
	popj 17,
%L11:
	addi 1,3
	jrst %L10

udiv4:
	lsh 1,-2
	popj 17,

dashl:
	lshc 1,1
	popj 17,

dlshl:
	lshc 1,1
	popj 17,

dsmul:
	lshc 1,1
	popj 17,

dumul:
	lshc 1,1
	popj 17,

dashr:
	move 4,1
	lsh 4,43
	move 3,2
	lsh 3,-1
	move 2,4
	ior 2,3
	ash 1,-1
	popj 17,

dlshr:
	lshc 1,-1
	popj 17,

dsdiv2:
	movei 3,0
	movei 4,2
	pushj 17,@[GIW .divdi3]
	popj 17,

dudiv2:
	lshc 1,-1
	popj 17,

dsdiv4:
	movei 3,0
	movei 4,4
	pushj 17,@[GIW .divdi3]
	popj 17,

dudiv4:
	lshc 1,-2
	popj 17,
