	TITLE	aobjn.c
	SEARCH	MONSYM

	.DIRECTIVE	KL10

gcc2.compiled:
gnu.c:
	EXTERN	bar

	ENTRY	aobjn
aobjn:
	movei 4,0
	movei 3,0
	movei 2,143
%L9:
	move 1,3
	add 4,bar(1)
	addi 3,1
	sojge 2,%L9
	move 1,4
	popj 17,

	END
