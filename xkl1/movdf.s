movdf0:
	setzb 1,2	; movdf
	popj 17,

movdf1:
	movsi 1,(1.23000000000000003525e2)	; movdf
	movei 2,0	; movdf
	popj 17,

movdf2:
	dmove 1,3
	popj 17,

movdf3:
	dmove 1,(3)
	popj 17,

movdf4:
	dmove 1,[EXP 300526521550,1656324000]
	popj 17,

movdf5:
	dmovem 1,(3)
	popj 17,
