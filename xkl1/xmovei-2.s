foo:
	xmovei 17,3(17)
	xmovei 1,-2(17)
	pushj 17,bar
	xmovei 1,-2(17)
	jrst baz
