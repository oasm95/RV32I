// See LICENSE for license details.

#ifndef __UTIL_H
#define __UTIL_H


#include <stdint.h>
#include <stdio.h>
#define static_assert(cond) switch(0) { case 0: case !!(long)(cond): ; }

static int verify(int n, const volatile int* test, const int* verify)
{
  int i;
  // Unrolled for faster verification
  for (i = 0; i < n/2*2; i+=2)
  {
    int t0 = test[i], t1 = test[i+1];
    int v0 = verify[i], v1 = verify[i+1];
    if (t0 != v0) return i+1;
    if (t1 != v1) return i+2;
  }
  if (n % 2 != 0 && test[n-1] != verify[n-1])
    return n;
  return 0;
}

static int verifyDouble(int n, const volatile double* test, const double* verify)
{
  int i;
  // Unrolled for faster verification
  for (i = 0; i < n/2*2; i+=2)
  {
    double t0 = test[i], t1 = test[i+1];
    double v0 = verify[i], v1 = verify[i+1];
    int eq1 = t0 == v0, eq2 = t1 == v1;
    if (!(eq1 & eq2)) return i+1+eq1;
  }
  if (n % 2 != 0 && test[n-1] != verify[n-1])
    return n;
  return 0;
}


static uint64_t lfsr(uint64_t x)
{
  uint64_t bit = (x ^ (x >> 1)) & 1;
  return (x >> 1) | (bit << 62);
}

static uintptr_t insn_len(uintptr_t pc)
{
  return (*(unsigned short*)pc & 3) ? 4 : 2;
}

static void printarray(const int* buff,int size)
{
    printf("{ ");
    int printed = 0;
    int remained = size % 10;
    int chunck = size /10;

    for(int i=1;i<size-remained+1 ;i+=10)
    {
        printf("%d,\t%d,\t%d,\t%d,\t%d,\t%d,\t%d,\t%d,\t%d,\t%d,\n",\
                buff[i-1],buff[i],buff[i+1],buff[i+2],buff[i+3],\
                buff[i+4],buff[i+5],buff[i+6],buff[i+7],buff[i+8]
        );
    }    
    for(int i = size-remained+1; i<size+1;i++)
        printf("%d,\t",buff[i-1]);
    puts("}\n");
}


#endif //__UTIL_H
