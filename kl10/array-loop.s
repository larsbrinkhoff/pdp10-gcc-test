baz:
	setzm @[GIW bar+1]
	skipa 2,.+1
	 GIW bar+1
	movei 1,11
%L9:
	setzm (2)
	addi 2,2
	sojge 1,%L9	; doloop_end
	popj 17,
