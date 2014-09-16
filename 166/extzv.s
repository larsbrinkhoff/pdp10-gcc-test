load6.0:
	move 1,s
	lsh 1,-36
	popj 17,

larr6.0:
	move 1,x6+1
	lsh 1,-36
	popj 17,

lptr6.0:
	move 1,(1)
	lsh 1,-36
	popj 17,

load6.1:
	ldb 1,[POINT 6,s,11]
	popj 17,

larr6.1:
	ldb 1,[POINT 6,x6+1,11]
	popj 17,

lptr6.1:
	ldb 1,[POINT 6,(1),11]
	popj 17,

load6.2:
	ldb 1,[POINT 6,s,17]
	popj 17,

larr6.2:
	ldb 1,[POINT 6,x6+1,17]
	popj 17,

lptr6.2:
	ldb 1,[POINT 6,(1),17]
	popj 17,

load6.3:
	ldb 1,[POINT 6,s,23]
	popj 17,

larr6.3:
	ldb 1,[POINT 6,x6+1,23]
	popj 17,

lptr6.3:
	ldb 1,[POINT 6,(1),23]
	popj 17,

load6.4:
	ldb 1,[POINT 6,s,29]
	popj 17,

larr6.4:
	ldb 1,[POINT 6,x6+1,29]
	popj 17,

lptr6.4:
	ldb 1,[POINT 6,(1),29]
	popj 17,

load6.5:
	move 1,s
	andi 1,77
	popj 17,

larr6.5:
	move 1,x6+1
	andi 1,77
	popj 17,

lptr6.5:
	move 1,(1)
	andi 1,77
	popj 17,

load7.0:
	move 1,s+1
	lsh 1,-35
	popj 17,

larr7.0:
	move 1,x7+1
	lsh 1,-35
	popj 17,

lptr7.0:
	move 1,1(1)
	lsh 1,-35
	popj 17,

load7.1:
	ldb 1,[POINT 7,s+1,13]
	popj 17,

larr7.1:
	ldb 1,[POINT 7,x7+1,13]
	popj 17,

lptr7.1:
	ldb 1,[POINT 7,1(1),13]
	popj 17,

load7.2:
	ldb 1,[POINT 7,s+1,20]
	popj 17,

larr7.2:
	ldb 1,[POINT 7,x7+1,20]
	popj 17,

lptr7.2:
	ldb 1,[POINT 7,1(1),20]
	popj 17,

load7.3:
	ldb 1,[POINT 7,s+1,27]
	popj 17,

larr7.3:
	ldb 1,[POINT 7,x7+1,27]
	popj 17,

lptr7.3:
	ldb 1,[POINT 7,1(1),27]
	popj 17,

load7.4:
	ldb 1,[POINT 7,s+1,34]
	popj 17,

larr7.4:
	ldb 1,[POINT 7,x7+1,34]
	popj 17,

lptr7.4:
	ldb 1,[POINT 7,1(1),34]
	popj 17,

load8.0:
	move 1,s+2
	lsh 1,-34
	popj 17,

larr8.0:
	move 1,x8+1
	lsh 1,-34
	popj 17,

lptr8.0:
	move 1,2(1)
	lsh 1,-34
	popj 17,

load8.1:
	ldb 1,[POINT 8,s+2,15]
	popj 17,

larr8.1:
	ldb 1,[POINT 8,x8+1,15]
	popj 17,

lptr8.1:
	ldb 1,[POINT 8,2(1),15]
	popj 17,

load8.2:
	ldb 1,[POINT 8,s+2,23]
	popj 17,

larr8.2:
	ldb 1,[POINT 8,x8+1,23]
	popj 17,

lptr8.2:
	ldb 1,[POINT 8,2(1),23]
	popj 17,

load8.3:
	ldb 1,[POINT 8,s+2,31]
	popj 17,

larr8.3:
	ldb 1,[POINT 8,x8+1,31]
	popj 17,

lptr8.3:
	ldb 1,[POINT 8,2(1),31]
	popj 17,

load9.0:
	move 1,s+3
	lsh 1,-33
	popj 17,

larr9.0:
	move 1,x9+1
	lsh 1,-33
	popj 17,

lptr9.0:
	move 1,3(1)
	lsh 1,-33
	popj 17,

load9.1:
	ldb 1,[POINT 9,s+3,17]
	popj 17,

larr9.1:
	ldb 1,[POINT 9,x9+1,17]
	popj 17,

lptr9.1:
	ldb 1,[POINT 9,3(1),17]
	popj 17,

load9.2:
	ldb 1,[POINT 9,s+3,26]
	popj 17,

larr9.2:
	ldb 1,[POINT 9,x9+1,26]
	popj 17,

lptr9.2:
	ldb 1,[POINT 9,3(1),26]
	popj 17,

load9.3:
	move 1,s+3
	andi 1,777
	popj 17,

larr9.3:
	move 1,x9+1
	andi 1,777
	popj 17,

lptr9.3:
	move 1,3(1)
	andi 1,777
	popj 17,

load16.0:
	move 1,s+4
	lsh 1,-24
	popj 17,

larr16.0:
	move 1,x16+1
	lsh 1,-24
	popj 17,

lptr16.0:
	move 1,4(1)
	lsh 1,-24
	popj 17,

load16.1:
	move 1,s+4
	lsh 1,-4
	andi 1,177777
	popj 17,

larr16.1:
	move 1,x16+1
	lsh 1,-4
	andi 1,177777
	popj 17,

lptr16.1:
	move 1,4(1)
	lsh 1,-4
	andi 1,177777
	popj 17,

load18.0:
	hlrz 1,s+5
	popj 17,

larr18.0:
	hlrz 1,x18+1
	popj 17,

lptr18.0:
	hlrz 1,5(1)
	popj 17,

load18.1:
	hrrz 1,s+5
	popj 17,

larr18.1:
	hrrz 1,x18+1
	popj 17,

lptr18.1:
	hrrz 1,5(1)
	popj 17,

load32.0:
	move 1,s+6
	lsh 1,-4
	popj 17,

larr32.0:
	move 1,x32+1
	lsh 1,-4
	popj 17,

lptr32.0:
	move 1,6(1)
	lsh 1,-4
	popj 17,
