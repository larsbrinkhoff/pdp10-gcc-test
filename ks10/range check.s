or1:
	cail 1,17
	 cail 1,43
	pushj 17,bar
	jrst baz

or01:
	cail 1,0
	 cail 1,43
	pushj 17,bar
	jrst baz

and1:
	cail 1,20
	 cail 1,42
%L8:
	jrst baz
	pushj 17,bar
	jrst %L8

and.11:
	cail 1,0
	 cail 1,42
%L11:
	jrst baz
	pushj 17,bar
	jrst %L11

or2:
	cail 1,17
	 cail 1,43
	jrst bar
	jrst baz

or02:
	cail 1,0
	 cail 1,43
	jrst bar
	jrst baz

and2:
	cail 1,20
	 cail 1,42
	jrst baz
	jrst bar

and.12:
	cail 1,0
	 cail 1,42
	jrst baz
	jrst bar

or3:
	cail 1,17
	 cail 1,43
	  jrst %L23
%L22:
	jrst baz
%L23:
	pushj 17,bar
	pushj 17,bar
	jrst %L22

or03:
	cail 1,0
	 cail 1,43
	  jrst %L26
%L25:
	jrst baz
%L26:
	pushj 17,bar
	pushj 17,bar
	jrst %L25

and3:
	cail 1,20
	 cail 1,42
%L28:
	jrst baz
	pushj 17,bar
	pushj 17,bar
	jrst %L28

and.13:
	cail 1,0
	 cail 1,42
%L31:
	jrst baz
	pushj 17,bar
	pushj 17,bar
	jrst %L31

or4:
	cail 1,17
	 cail 1,43
	pushj 17,bar
	pushj 17,baz
	jrst baz

or04:
	cail 1,0
	 cail 1,43
	pushj 17,bar
	pushj 17,baz
	jrst baz

and4:
	cail 1,20
	 cail 1,42
	  trna
	pushj 17,bar
	pushj 17,baz
	jrst baz

and.14:
	cail 1,0
	 cail 1,42
	  trna
	pushj 17,bar
	pushj 17,baz
	jrst baz
