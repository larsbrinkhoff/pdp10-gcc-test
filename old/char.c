#define BYTE signed char
BYTE	ldb		(BYTE *a)		{ return *a; }
void	dpb		(BYTE *a, BYTE b)	{ *a = b; }
BYTE	move		(int a, BYTE b)		{ return b; }
BYTE	movei		(void)			{ return (BYTE)42; }
void	movei_dpb	(BYTE *a)		{ *a = 42; }
void	ldp_dpb		(BYTE *a, BYTE *b)	{ *a = *b; }
