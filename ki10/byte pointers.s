Qp1:
	POINT 18,Q,35
Qp2:
	POINT 9,QA+1,8
Qp3:
	POINT 9,QA+1,17
Qp4:
	POINT 9,QA+1,26
Qp5:
	POINT 9,QA+1,35
Qp6:
	POINT 9,S+1,8
Qp7:
	POINT 9,S+1,17
Qp8:
	POINT 9,S+1,26
Qp9:
	POINT 9,S+1,35
Hp1:
	POINT 18,H,35
Hp2:
	POINT 18,HA+1,17
Hp3:
	POINT 18,HA+1,35
Hp4:
	POINT 18,S+2,17
Hp5:
	POINT 18,S+2,35

ldb1:
	move 1,S+1
	lsh 1,-33
	popj 17,

ldb2:
	ldb 1,[POINT 9,S+1,17]
	popj 17,

ldb3:
	ldb 1,[POINT 9,S+1,26]
	popj 17,

ldb4:
	move 1,S+1
	andi 1,777
	popj 17,

ldb5:
	ldb 1,[POINT 8,S+3,15]
	popj 17,

ldb6:
	ldb 1,[POINT 10,S+3,25]
	popj 17,

ldb7:
	ldb 1,[POINT 8,1,15]
	popj 17,

ldb8:
	ldb 1,[POINT 10,1,25]
	popj 17,
