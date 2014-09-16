sojl:
%L2:
	add 1,2
	sojl 2,%L2	; decrement_and_branch_until_zero
	popj 17,

sojle:
%L7:
	add 1,2
	sojle 2,%L7	; decrement_and_branch_until_zero
	popj 17,
