// hw4main.c -- For HW-4 programming project for CS-201
//
// Harry Porter - 11/3/15
//
// See homework assignment for details.
//
// This program is intentionally uncommented.
//
#include <stdio.h>
#include <stdlib.h>

long foo (long, long, long, long, long);
void recover ();

int main (int argc, char ** argv) {
  long a,b,c, countDown, retVal;
  if (argc != 5) {
    printf ("Usage: program <int> <int> <int> <int>\n");
    exit (-1);
  }
  a = atoi (argv[1]);
  b = atoi (argv[2]);
  c = atoi (argv[3]);
  countDown = atoi (argv[4]);
  printf ("main called with a = 0x%lx, b = 0x%lx, c = 0x%lx, countDown = %ld\n", a, b, c, countDown);
  retVal = foo (a, b, c, 0, countDown);
  printf ("foo returns 0x%lx\n", retVal);
  return (0);
}

long foo (long a, long b, long c, long countUp, long countDown) {
  long x, y, z;
  if (!countDown) {
    recover ();
    return a;
  }
  if (a < 0)
    x = (a << 1) + 12;
  else
    x = a << 1;
  if (b < 0)
    y = (b << 1) + 34;
  else
    y = b << 1;
  if (c < 0)
    z = (c << 1) + 56;
  else
    z = c << 1;
  x ^= b;
  y ^= c;
  z ^= a;
  return foo (x,y,z, countUp+1, countDown-1) + a + b + c + countUp + countDown;
}
