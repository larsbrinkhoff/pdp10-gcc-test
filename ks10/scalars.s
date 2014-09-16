ld.static.sQint:
	hrre 1,a.sQint
	popj 17,

st.static.sQint:
	movem 1,a.sQint
	popj 17,

ld.static.uQint:
	move 1,a.uQint
	popj 17,

st.static.uQint:
	movem 1,a.uQint
	popj 17,

ld.static.Hint:
	hrre 1,a.Hint
	popj 17,

st.static.Hint:
	movem 1,a.Hint
	popj 17,

ld.static.uHint:
	move 1,a.uHint
	popj 17,

st.static.uHint:
	movem 1,a.uHint
	popj 17,

ld.stack.sQint:
	adjsp 17,1
	hrre 1,(17)
	adjsp 17,-1
	popj 17,

st.stack.sQint:
	adjsp 17,1
	movem 1,(17)
	adjsp 17,-1
	popj 17,

ld.stack.uQint:
	adjsp 17,1
	move 1,(17)
	adjsp 17,-1
	popj 17,

st.stack.uQint:
	adjsp 17,1
	movem 1,(17)
	adjsp 17,-1
	popj 17,

ld.stack.Hint:
	adjsp 17,1
	hrre 1,(17)
	adjsp 17,-1
	popj 17,

st.stack.Hint:
	adjsp 17,1
	movem 1,(17)
	adjsp 17,-1
	popj 17,

ld.stack.uHint:
	adjsp 17,1
	move 1,(17)
	adjsp 17,-1
	popj 17,

st.stack.uHint:
	adjsp 17,1
	movem 1,(17)
	adjsp 17,-1
	popj 17,
