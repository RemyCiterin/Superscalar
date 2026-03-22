#include <stdarg.h>
#include "fixed.h"

fixed fixed_fmod(fixed x, fixed y) {
  x = fixed_div(x, y);
  return fixed_mul(y, x - fixed_floor(x));
}

// Taylor approximation of cos(x)
fixed fixed_cos(fixed x) {
  while (x > PI) x -= 2 * PI;
  while (x < -PI) x += 2 * PI;

  return
    FIXED(1) -
    fixed_mul(fixed_pow(x,2), FIXED(1.0 / 2.0)) +
    fixed_mul(fixed_pow(x,4), FIXED(1.0 / 24.0)) -
    fixed_mul(fixed_pow(x,6), FIXED(1.0 / 720.0));
  //x = fixed_fmod(x, 2*PI);
  //x = fixed_mul(x, x);
  //fixed eps = 100;

  //int n = 0;
  //fixed s = FIXED(1);
  //fixed t = FIXED(1);

  //while (fixed_abs(fixed_div(t,s)) > eps) {
  //  n += 2;
  //  t = -fixed_mul(x,t) / (n*n - n);
  //  s = s + t;
  //}

  //return s;
}

// Taylor approximation of sin(x)
fixed fixed_sin(fixed x) {
  return fixed_cos(PI/2 - x);
}

// Raymond approximation of atan(y,x) using the `atan(z) = pi/2 - atan(1/z)` equality (for `z > 0`)
// and `atan(-z) = - atan(z)`
fixed fixed_atan2(fixed y, fixed x) {
  fixed a = fixed_div(
    fixed_min(fixed_abs(x), fixed_abs(y)),
    fixed_max(fixed_abs(x), fixed_abs(y))
  );

  fixed s = fixed_pow(a, 2);

  fixed r = fixed_mul(
    fixed_mul(FIXED(-0.0464964749), s) + fixed_mul(FIXED(0.15931422), s) - FIXED(0.327622764),
    fixed_mul(s, a)
  ) + a;

  if (fixed_abs(y) > fixed_abs(x)) r = PI/2 - r;
  if (x < 0) r = PI - r;
  if (y < 0) r = -r;
  return r;
}

inline fixed fixed_nmul(int n, ...) {
  va_list params;
  va_start(params, n);

  fixed acc;
  for (int i=0; i < n; i++) {
    fixed x = va_arg(params, fixed);
    acc = i == 0 ? x : fixed_mul(acc, x);
  }

  va_end(params);
  return acc;
}

void print_fixed(fixed x) {
  fixed a = fixed_abs(x);
  int i = a >> FIXED_LOG_SCALE;
  unsigned f = a & (FIXED_SCALE - 1);

  f = (f * 100000) / FIXED_SCALE;

  if (x < 0) printf("-");
  printf("%d.", i);

  if (f >= 10000) printf("%d", f);
  else if (f >= 1000) printf("0%d", f);
  else if (f >= 100) printf("00%d", f);
  else if (f >= 10) printf("000%d", f);
  else printf("0000%d", f);
}
