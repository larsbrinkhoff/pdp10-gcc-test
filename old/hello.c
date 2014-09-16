extern int puts (const char *);
extern int putchar (int);
extern int getchar (void);

static char *he_pointer = "hello, pointer\n";
static const char he_array[] = { 'h', 'e', 'l', 'l', 'o', ',', ' ',
				 'a', 'r', 'r', 'a', 'y', '\n', 0 };
static char h = 'h';
static char e = 'e';
static char l = 'l';
static char o = 'o';
static char newline = '\n';

int
main (int argc, char **argv)
{
  char *h_pointer = &h;
  char *e_pointer = &e;
  char *l_pointer = &l;
  char *o_pointer = &o;
  char *nl_pointer = &newline;
  int c, i;

  puts ("hello, string\n");
  puts (he_pointer);
  puts (he_array);
  putchar (*h_pointer);
  putchar (*e_pointer);
  putchar (*l_pointer);
  putchar (*l_pointer);
  putchar (*o_pointer);
  putchar (*nl_pointer);

  for (i = 0; i < 8; i++)
    puts ("hello world\n");

  while ((c = getchar ()) != 'x')
    putchar (c);

  return 0;
}
