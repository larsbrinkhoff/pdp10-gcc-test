caml1:
	caml 1,(2)
	movei 1,0
	popj 17,

caml2:
	camle 1,[123456123455]
	movei 1,0
	popj 17,

came1:
	came 1,(2)
	movei 1,0
	popj 17,

came2:
	came 1,[123456123456]
	movei 1,0
	popj 17,

camle1:
	camge 1,(2)
	movei 1,0
	popj 17,

camle2:
	camg 1,[123456123455]
	movei 1,0
	popj 17,

camge1:
	camle 1,(2)
	movei 1,0
	popj 17,

camge2:
	camle 1,[123456123456]
	movei 1,0
	popj 17,

camn1:
	came 1,(2)
%L18:
	popj 17,
	movei 1,0
	jrst %L18

camn2:
	came 1,[123456123456]
%L21:
	popj 17,
	movei 1,0
	jrst %L21

camg1:
	camg 1,(2)
	movei 1,0
	popj 17,

camg2:
	camg 1,[123456123456]
	movei 1,0
	popj 17,
