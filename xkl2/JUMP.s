jumpl:
	jumpl 1,%L2
	setzm x
%L2:
	popj 17,

jumpe:
	jumpe 1,%L4
	setzm x
%L4:
	popj 17,

jumple:
	jumple 1,%L6
	setzm x
%L6:
	popj 17,

jumpn:
	jumpn 1,%L8
	setzm x
%L8:
	popj 17,

jumpge:
	jumpge 1,%L10
	setzm x
%L10:
	popj 17,

jumpg:
	jumpg 1,%L12
	setzm x
%L12:
	popj 17,
