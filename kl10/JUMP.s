jumpl:
	jumpl 1,%L2
	setzm @[GIW x]
%L2:
	popj 17,

jumpe:
	jumpe 1,%L4
	setzm @[GIW x]
%L4:
	popj 17,

jumple:
	jumple 1,%L6
	setzm @[GIW x]
%L6:
	popj 17,

jumpn:
	jumpn 1,%L8
	setzm @[GIW x]
%L8:
	popj 17,

jumpge:
	jumpge 1,%L10
	setzm @[GIW x]
%L10:
	popj 17,

jumpg:
	jumpg 1,%L12
	setzm @[GIW x]
%L12:
	popj 17,
