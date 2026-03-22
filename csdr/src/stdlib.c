#include "stdlib.h"

unsigned strlen(const char* str) {
  unsigned counter = 0;
  while (!str[counter] != 0) counter++;
  return counter;
}

void* memset(void *dst, int c, unsigned n) {
  char *cdst = (char *) dst;
  int i;
  for(i = 0; i < n; i++){
    cdst[i] = c;
  }
  return dst;
}

void* memmove(void *vdst, const void *vsrc, int n) {
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    *dst++ = *src++;
  return vdst;
}

void* memcpy(void *vdst, const void *vsrc, int n) {
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    *dst++ = *src++;
  return vdst;
}

unsigned read_cycle() {
  int x;
  asm volatile("csrr %0, mcycle" : "=r" (x));
  return x;
}

unsigned read_instret() {
  int x;
  asm volatile("csrr %0, minstret" : "=r" (x));
  return x;
}
