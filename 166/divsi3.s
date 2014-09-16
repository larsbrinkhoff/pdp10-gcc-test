divsi3.1:
	move 1,[252525252526]
	mulm 2,1
	ash 1,-1
	ash 2,-43
	sub 1,2
	popj 17,

divsi3.2:
	idivm 1,2
	move 1,2
	popj 17,

divsi3.3:
	idivm 1,(2)
	popj 17,
