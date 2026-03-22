#include "backman.h"

///////////////////////////////////////////////////////////////////////////////////////////////////
// Low pass filter initialization: decimate 90% of the inputs
///////////////////////////////////////////////////////////////////////////////////////////////////
static fixed backman_buf[BACKMAN_SIZE];

void init_backman() {
  fixed alpha = FIXED(0.16);
  fixed a0 = (FIXED(1)-alpha) / 2;
  fixed a1 = FIXED(0.5);
  fixed a2 = alpha / 2;

  fixed sum = 0;
  for (int i=0; i < BACKMAN_SIZE; i++) {
    fixed a = 2 * i * PI / BACKMAN_SIZE;
    fixed b = 4 * i * PI / BACKMAN_SIZE;
    while (a > 2*PI) a -= 2*PI;
    while (b > 2*PI) b -= 2*PI;

    backman_buf[i] = a0 -
      fixed_mul(a1, fixed_cos(a)) +
      fixed_mul(a2, fixed_cos(b));
    sum += backman_buf[i];
  }

  for (int i=0; i < BACKMAN_SIZE; i++) backman_buf[i] = fixed_div(backman_buf[i], sum);
}

fixed filter_backman(fixed* buf) {
  fixed sum = 0;

  for (int i=0; i < BACKMAN_SIZE; i++) {
    sum += fixed_mul(backman_buf[i], buf[i]);
  }

  return sum;
}
