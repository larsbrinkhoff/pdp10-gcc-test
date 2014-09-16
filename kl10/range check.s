or1:
	cail 1,17
	 cail 1,43
	pushj 17,@[GIW bar]
	jrst @[GIW baz]

or01:
	cail 1,0
	 cail 1,43
	pushj 17,@[GIW bar]
	jrst @[GIW baz]

and1:
	cail 1,20
	 cail 1,42
%L8:
	jrst @[GIW baz]
	pushj 17,@[GIW bar]
	jrst %L8

and.11:
	cail 1,0
	 cail 1,42
%L11:
	jrst @[GIW baz]
	pushj 17,@[GIW bar]
	jrst %L11

or2:
	cail 1,17
	 cail 1,43
	jrst @[GIW bar]
	jrst @[GIW baz]

or02:
	cail 1,0
	 cail 1,43
	jrst @[GIW bar]
	jrst @[GIW baz]

and2:
	cail 1,20
	 cail 1,42
	jrst @[GIW baz]
	jrst @[GIW bar]

and.12:
	cail 1,0
	 cail 1,42
	jrst @[GIW baz]
	jrst @[GIW bar]

or3:
	cail 1,17
	 cail 1,43
	  jrst %L23
%L22:
	jrst @[GIW baz]
%L23:
	pushj 17,@[GIW bar]
	pushj 17,@[GIW bar]
	jrst %L22

or03:
	cail 1,0
	 cail 1,43
	  jrst %L26
%L25:
	jrst @[GIW baz]
%L26:
	pushj 17,@[GIW bar]
	pushj 17,@[GIW bar]
	jrst %L25

and3:
	cail 1,20
	 cail 1,42
%L28:
	jrst @[GIW baz]
	pushj 17,@[GIW bar]
	pushj 17,@[GIW bar]
	jrst %L28

and.13:
	cail 1,0
	 cail 1,42
%L31:
	jrst @[GIW baz]
	pushj 17,@[GIW bar]
	pushj 17,@[GIW bar]
	jrst %L31

or4:
	cail 1,17
	 cail 1,43
	pushj 17,@[GIW bar]
	pushj 17,@[GIW baz]
	jrst @[GIW baz]

or04:
	cail 1,0
	 cail 1,43
	pushj 17,@[GIW bar]
	pushj 17,@[GIW baz]
	jrst @[GIW baz]

and4:
	cail 1,20
	 cail 1,42
	  trna
	pushj 17,@[GIW bar]
	pushj 17,@[GIW baz]
	jrst @[GIW baz]

and.14:
	cail 1,0
	 cail 1,42
	  trna
	pushj 17,@[GIW bar]
	pushj 17,@[GIW baz]
	jrst @[GIW baz]
