#include "insns.h"

#define CONVERT(T1, T2) static T2 *convert##T1##T2 (T1 *x) { return (T2 *)x; }

CONVERT (Qint, Hint)
CONVERT (Qint, Sint)

CONVERT (Hint, Qint)
CONVERT (Hint, Sint)

CONVERT (Sint, Qint)
CONVERT (Sint, Hint)

#if 1
//CONVERT (char6, char7)
//CONVERT (char6, char8)
//CONVERT (char6, char9)
//CONVERT (char6, short18)
CONVERT (char6, int36)

CONVERT (char7, char6)
//CONVERT (char7, char8)
//CONVERT (char7, char9)
//CONVERT (char7, short18)
CONVERT (char7, int36)

CONVERT (char8, char6)
CONVERT (char8, char7)
CONVERT (char8, char9)
CONVERT (char8, short18)
CONVERT (char8, int36)

CONVERT (char9, char6)
CONVERT (char9, char7)
CONVERT (char9, char8)
CONVERT (char9, short18)
CONVERT (char9, int36)

//CONVERT (short18, char6)
//CONVERT (short18, char7)
CONVERT (short18, char8)
CONVERT (short18, char9)
CONVERT (short18, int36)

CONVERT (int36, char6)
CONVERT (int36, char7)
CONVERT (int36, char8)
CONVERT (int36, char9)
CONVERT (int36, short18)
#endif
