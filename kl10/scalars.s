ld.static.sQint:
	hrre 1,@[GIW a.sQint]
	popj 17,

st.static.sQint:
	movem 1,@[GIW a.sQint]
	popj 17,

ptr.static.sQint:
	skipa 1,.+1
	 OWGBP 76,GIW a.sQint
	popj 17,

ld.static.uQint:
	move 1,@[GIW a.uQint]
	popj 17,

st.static.uQint:
	movem 1,@[GIW a.uQint]
	popj 17,

ptr.static.uQint:
	skipa 1,.+1
	 OWGBP 76,GIW a.uQint
	popj 17,

ld.static.Hint:
	hrre 1,@[GIW a.Hint]
	popj 17,

st.static.Hint:
	movem 1,@[GIW a.Hint]
	popj 17,

ptr.static.Hint:
	skipa 1,.+1
	 OWGBP 76,GIW a.Hint
	popj 17,

ld.static.uHint:
	move 1,@[GIW a.uHint]
	popj 17,

st.static.uHint:
	movem 1,@[GIW a.uHint]
	popj 17,

ptr.static.uHint:
	skipa 1,.+1
	 OWGBP 76,GIW a.uHint
	popj 17,

ld.stack.sQint:
	xmovei 17,1(17)
	hrre 1,(17)
	xmovei 17,-1(17)
	popj 17,

st.stack.sQint:
	xmovei 17,1(17)
	movem 1,(17)
	xmovei 17,-1(17)
	popj 17,

ptr.stack.sQint:
	xmovei 17,1(17)
	xmovei 1,(17)
	tlo 1,760000
	pushj 17,@[GIW foo]
	xmovei 17,-1(17)
	popj 17,

ld.stack.uQint:
	xmovei 17,1(17)
	move 1,(17)
	xmovei 17,-1(17)
	popj 17,

st.stack.uQint:
	xmovei 17,1(17)
	movem 1,(17)
	xmovei 17,-1(17)
	popj 17,

ptr.stack.uQint:
	xmovei 17,1(17)
	xmovei 1,(17)
	tlo 1,760000
	pushj 17,@[GIW foo]
	xmovei 17,-1(17)
	popj 17,

ld.stack.Hint:
	xmovei 17,1(17)
	hrre 1,(17)
	xmovei 17,-1(17)
	popj 17,

st.stack.Hint:
	xmovei 17,1(17)
	movem 1,(17)
	xmovei 17,-1(17)
	popj 17,

ptr.stack.Hint:
	xmovei 17,1(17)
	xmovei 1,(17)
	tlo 1,760000
	pushj 17,@[GIW foo]
	xmovei 17,-1(17)
	popj 17,

ld.stack.uHint:
	xmovei 17,1(17)
	move 1,(17)
	xmovei 17,-1(17)
	popj 17,

st.stack.uHint:
	xmovei 17,1(17)
	movem 1,(17)
	xmovei 17,-1(17)
	popj 17,

ptr.stack.uHint:
	xmovei 17,1(17)
	xmovei 1,(17)
	tlo 1,760000
	pushj 17,@[GIW foo]
	xmovei 17,-1(17)
	popj 17,
