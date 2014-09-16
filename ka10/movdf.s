movdf0:
	setzb 1,2	; movdf
	popj 17,

movdf1:
	movsi 1,(1.23000000000000000000e2)	; movdf
	movei 2,0	; movdf
	popj 17,

movdf2:
	move 1,3	; movdf
	move 2,4	; movdf
	popj 17,

movdf3:
	move 1,(3)	; movdf
	move 2,1(3)	; movdf
	popj 17,

movdf4:
	move 1,[300526521550]	; movdf
	move 2,[1656324103]	; movdf
	popj 17,

movdf5:
	movem 1,(3)	; movdf
	movem 2,1(3)	; movdf
	popj 17,
