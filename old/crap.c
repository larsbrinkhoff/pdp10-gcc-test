int crap1 (int pc, int mumble)
{
  pc = pc++ & mumble;
  return pc;
}

int crap2 (int pc, int mubble)
{
  pc = (pc + 1) & mubble;
  return pc;
}
