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
	add 17,[1,,1]
	hrre 1,(17)
	add 17,[-1,,-1]
	popj 17,

st.stack.sQint:
	add 17,[1,,1]
	movem 1,(17)
	add 17,[-1,,-1]
	popj 17,

ld.stack.uQint:
	add 17,[1,,1]
	move 1,(17)
	add 17,[-1,,-1]
	popj 17,

st.stack.uQint:
	add 17,[1,,1]
	movem 1,(17)
	add 17,[-1,,-1]
	popj 17,

ld.stack.Hint:
	add 17,[1,,1]
	hrre 1,(17)
	add 17,[-1,,-1]
	popj 17,

st.stack.Hint:
	add 17,[1,,1]
	movem 1,(17)
	add 17,[-1,,-1]
	popj 17,

ld.stack.uHint:
	add 17,[1,,1]
	move 1,(17)
	add 17,[-1,,-1]
	popj 17,

st.stack.uHint:
	add 17,[1,,1]
	movem 1,(17)
	add 17,[-1,,-1]
	popj 17,
