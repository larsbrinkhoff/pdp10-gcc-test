dpb1:
	dpb 1,2
	popj 17,

dpb2:
	dpb 1,2	; movhi
	popj 17,

dpb3:
	dpb 2,[POINT 8,1,15]
	popj 17,
