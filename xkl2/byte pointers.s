Qp1:
	OWGBP 76,GIW Q
Qp2:
	OWGBP 70,GIW QA+1
Qp3:
	OWGBP 71,GIW QA+1
Qp4:
	OWGBP 72,GIW QA+1
Qp5:
	OWGBP 73,GIW QA+1
Qp6:
	OWGBP 70,GIW S+1
Qp7:
	OWGBP 71,GIW S+1
Qp8:
	OWGBP 72,GIW S+1
Qp9:
	OWGBP 73,GIW S+1
Hp1:
	OWGBP 76,GIW H
Hp2:
	OWGBP 75,GIW HA+1
Hp3:
	OWGBP 76,GIW HA+1
Hp4:
	OWGBP 75,GIW S+2
Hp5:
	OWGBP 76,GIW S+2
ldb1:
	move 1,S+1
	lsh 1,-33
	popj 17,

ldb2:
	ldb 1,[OWGBP 71,GIW S+1]
	popj 17,

ldb3:
	ldb 1,[OWGBP 72,GIW S+1]
	popj 17,

ldb4:
	move 1,S+1
	andi 1,777
	popj 17,

ldb5:
	ldb 1,[OWGBP 56,GIW S+3]
	popj 17,

ldb6:
	ldb 1,[EXP <121240,,0>,<GIW S+3>]
	popj 17,

ldb7:
	ldb 1,[POINT 8,1,15]
	popj 17,

ldb8:
	ldb 1,[POINT 10,1,25]
	popj 17,
