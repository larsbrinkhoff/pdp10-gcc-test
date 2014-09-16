baz:
	setzm bar+1
	xmovei 2,bar+1
	movei 1,11
%L9:
	setzm (2)
	addi 2,2
	sojge 1,%L9	; doloop_end
	popj 17,
