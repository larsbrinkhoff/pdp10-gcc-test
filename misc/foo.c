#include "insns.h"

#define TEST(T)								  \
static T			scalar_##T;				  \
static struct	{ T x; }	struct_##T;				  \
static T			array_##T[1];				  \
static T	ld_scalar_##T	(void)		{ return scalar_##T;	} \
static void	st_stalar_##T	(T x)		{ scalar_##T = x;	} \
static T	ld_struct_##T	(void)		{ return struct_##T.x;	} \
static void	st_struct_##T	(T x)		{ struct_##T.x = x;	} \
static T	ld_array_##T	(void)		{ return array_##T[0];	} \
static void	st_array_##T	(T x)		{ array_##T[0] = x;	} \
static T	ld_pointer_##T	(T *x)		{ return *x;		} \
static void	st_pointer_##T	(T *x, T y)	{ *x = y;		}

TEST (char8)
TEST (uchar8)
TEST (short16)
TEST (ushort16)
TEST (int32)
TEST (uint32)
