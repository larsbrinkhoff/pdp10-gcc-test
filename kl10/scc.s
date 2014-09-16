skipeSint:
	skipe 1
	 tdza 1,1
	  movei 1,1
	popj 17,

cameSint1:
	came 1,2
	 tdza 1,1
	  movei 1,1
	popj 17,

cameSint2:
	came 1,(2)
	 tdza 1,1
	  movei 1,1
	popj 17,

skipeSfloat:
	skipe 1
	 tdza 1,1
	  movei 1,1
	popj 17,

cameSfloat1:
	came 1,2
	 tdza 1,1
	  movei 1,1
	popj 17,

cameSfloat2:
	came 1,(2)
	 tdza 1,1
	  movei 1,1
	popj 17,

skipnSint:
	skipe 1
	 movei 1,1
	popj 17,

camnSint1:
	camn 1,2
	 tdza 1,1
	  movei 1,1
	popj 17,

camnSint2:
	camn 1,(2)
	 tdza 1,1
	  movei 1,1
	popj 17,

skipnSfloat:
	skipe 1
	 movei 1,1
	popj 17,

camnSfloat1:
	camn 1,2
	 tdza 1,1
	  movei 1,1
	popj 17,

camnSfloat2:
	camn 1,(2)
	 tdza 1,1
	  movei 1,1
	popj 17,

skiplSint:
	lsh 1,-43
	popj 17,

camlSint1:
	caml 1,2
	 tdza 1,1
	  movei 1,1
	popj 17,

camlSint2:
	caml 1,(2)
	 tdza 1,1
	  movei 1,1
	popj 17,

skiplSfloat:
	skipl 1
	 tdza 1,1
	  movei 1,1
	popj 17,

camlSfloat1:
	caml 1,2
	 tdza 1,1
	  movei 1,1
	popj 17,

camlSfloat2:
	caml 1,(2)
	 tdza 1,1
	  movei 1,1
	popj 17,

skipluSint:
	movei 1,0
	popj 17,

camluSint1:
	tlc 1,400000
	tlc 2,400000
	caml 1,2
	 tdza 1,1
	  movei 1,1
	popj 17,

camluSint2:
	tlc 1,400000
	move 2,(2)
	tlc 2,400000
	caml 1,2
	 tdza 1,1
	  movei 1,1
	popj 17,

skipgSint:
	skipg 1
	 tdza 1,1
	  movei 1,1
	popj 17,

camgSint1:
	camg 1,2
	 tdza 1,1
	  movei 1,1
	popj 17,

camgSint2:
	camg 1,(2)
	 tdza 1,1
	  movei 1,1
	popj 17,

skipgSfloat:
	skipg 1
	 tdza 1,1
	  movei 1,1
	popj 17,

camgSfloat1:
	camg 1,2
	 tdza 1,1
	  movei 1,1
	popj 17,

camgSfloat2:
	camg 1,(2)
	 tdza 1,1
	  movei 1,1
	popj 17,

skipguSint:
	skipe 1
	 movei 1,1
	popj 17,

camguSint1:
	tlc 1,400000
	tlc 2,400000
	camg 1,2
	 tdza 1,1
	  movei 1,1
	popj 17,

camguSint2:
	tlc 1,400000
	move 2,(2)
	tlc 2,400000
	camg 1,2
	 tdza 1,1
	  movei 1,1
	popj 17,

skipleSint:
	skiple 1
	 tdza 1,1
	  movei 1,1
	popj 17,

camleSint1:
	camle 1,2
	 tdza 1,1
	  movei 1,1
	popj 17,

camleSint2:
	camle 1,(2)
	 tdza 1,1
	  movei 1,1
	popj 17,

skipleSfloat:
	skiple 1
	 tdza 1,1
	  movei 1,1
	popj 17,

camleSfloat1:
	camle 1,2
	 tdza 1,1
	  movei 1,1
	popj 17,

camleSfloat2:
	camle 1,(2)
	 tdza 1,1
	  movei 1,1
	popj 17,

skipleuSint:
	skipe 1
	 tdza 1,1
	  movei 1,1
	popj 17,

camleuSint1:
	tlc 1,400000
	tlc 2,400000
	camle 1,2
	 tdza 1,1
	  movei 1,1
	popj 17,

camleuSint2:
	tlc 1,400000
	move 2,(2)
	tlc 2,400000
	camle 1,2
	 tdza 1,1
	  movei 1,1
	popj 17,

skipgeSint:
	skipge 1
	 tdza 1,1
	  movei 1,1
	popj 17,

camgeSint1:
	camge 1,2
	 tdza 1,1
	  movei 1,1
	popj 17,

camgeSint2:
	camge 1,(2)
	 tdza 1,1
	  movei 1,1
	popj 17,

skipgeSfloat:
	skipge 1
	 tdza 1,1
	  movei 1,1
	popj 17,

camgeSfloat1:
	camge 1,2
	 tdza 1,1
	  movei 1,1
	popj 17,

camgeSfloat2:
	camge 1,(2)
	 tdza 1,1
	  movei 1,1
	popj 17,

skipgeuSint:
	movei 1,1
	popj 17,

camgeuSint1:
	tlc 1,400000
	tlc 2,400000
	camge 1,2
	 tdza 1,1
	  movei 1,1
	popj 17,

camgeuSint2:
	tlc 1,400000
	move 2,(2)
	tlc 2,400000
	camge 1,2
	 tdza 1,1
	  movei 1,1
	popj 17,
