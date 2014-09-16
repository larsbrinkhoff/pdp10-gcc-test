#include "insns.h"

#define ARG(T, X)						\
static T arg##T##X (T a, T b, T c, T d, T e, T f, T g, T h)	\
{								\
  return X;							\
}

ARG (uQint, e)
ARG (uQint, f)
ARG (uQint, g)
ARG (uQint, h)

ARG (Hint, e)
ARG (Hint, f)
ARG (Hint, g)
ARG (Hint, h)

ARG (Sint, e)
ARG (Sint, f)
ARG (Sint, g)
ARG (Sint, h)

ARG (Dint, c)
ARG (Dint, d)
ARG (Dint, e)
ARG (Dint, f)
