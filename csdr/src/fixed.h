#ifndef FIXED_H
#define FIXED_H

#include <stdint.h>
#include <stdbool.h>
#include <stdarg.h>
#include "stdlib.h"

#define FIXED_LOG_SCALE 16
#define FIXED_SCALE (1 << FIXED_LOG_SCALE)

#define FIXED(x) ((fixed)((x) * FIXED_SCALE))
#define ZERO (FIXED(0))
#define ONE (FIXED(1))
#define TWO (FIXED(2))

#define PI (FIXED(3.141592653589793f))

typedef int fixed;

inline fixed fixed_mul(fixed a, fixed b) {
  int64_t x = (int64_t)a * (int64_t)b;
  return (fixed)(x >> FIXED_LOG_SCALE);
}

fixed fixed_nmul(int n, ...);

inline fixed fixed_pow(fixed x, int n) {
  if (n == 2) return fixed_mul(x,x);
  if (n == 0) return FIXED(1);
  if (n == 1) return x;

  fixed q = fixed_pow(x, n / 2);
  q = fixed_mul(q, q);

  if (n % 2 == 0) return q;
  else return fixed_mul(q, x);
}

inline fixed fixed_div(fixed n, fixed d) {
  int64_t a = (int64_t)(n) << FIXED_LOG_SCALE;
  int64_t b = (int64_t)(d);
  return (fixed)(a / b);
}

inline fixed fixed_floor(fixed x) {
  return (x / FIXED_SCALE) * FIXED_SCALE;
}

fixed fixed_fmod(fixed x, fixed y);

inline fixed fixed_abs(fixed x) {
  return x > 0 ? x : -x;
}

inline fixed fixed_min(fixed x, fixed y) {
  return x < y ? x : y;
}

inline fixed fixed_max(fixed x, fixed y) {
  return x > y ? x : y;
}

fixed fixed_cos(fixed x);

fixed fixed_sin(fixed x);

fixed fixed_atan2(fixed x, fixed y);


void print_fixed(fixed x);

#endif
