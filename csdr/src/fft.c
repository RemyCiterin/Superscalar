#include "fft.h"

#define TABLE_SIZE 4096
static fixed table_rel[TABLE_SIZE];
static fixed table_img[TABLE_SIZE];

void init_fft() {
  for (int i=0; i < TABLE_SIZE; i++) {
    float phi = (2 * PI * i) / TABLE_SIZE;
    table_rel[i] = fixed_cos(phi);
    table_img[i] = - fixed_sin(phi);
  }
}

static inline int log2int(int n) {
  int log = 0;

  while (n != 1) {
    n = n >> 1;
    log++;
  }

  return log;
}

static inline int bit_reverse(int x, int log2n) {
  int r = 0;

  for (int i=0; i < log2n; i++) {
    r = (r << 1) | (x & 1);
    x = x >> 1;
  }

  return r;
}

static inline fixed twiddle_rel(int k, int n) {
  if (n & (n-1) == 0 && n <= TABLE_SIZE) {
    int index = k * (TABLE_SIZE / n);
    return table_rel[index % TABLE_SIZE];
  }

  float phi = 2*k*PI/n;
  return fixed_cos(phi);
}

static inline fixed twiddle_img(int k, int n) {
  if (n & (n-1) == 0 && n <= TABLE_SIZE) {
    int index = k * (TABLE_SIZE / n);
    return table_img[index % TABLE_SIZE];
  }

  float phi = 2*k*PI/n;
  return - fixed_sin(phi);
}

void fft(fixed* in_rel, fixed* in_img, fixed* out_rel, fixed* out_img, unsigned size) {
  int log2size = log2int(size);

  if (in_rel) memcpy(out_rel, in_rel, size*sizeof(fixed));
  else memset(out_rel, 0, size*sizeof(fixed));

  if (in_img) memcpy(out_img, in_img, size*sizeof(fixed));
  else memset(out_img, 0, size*sizeof(fixed));

  for (int i=0; i < size; i++) {
    int j = bit_reverse(i, log2size);

    if (i < j) {
      fixed tmp = out_img[i];
      out_img[i] = out_img[j];
      out_img[j] = tmp;

      tmp = out_rel[i];
      out_rel[i] = out_rel[j];
      out_rel[j] = tmp;
    }
  }

  for (int stage=1; stage < log2size+1; stage++) {
    int m = 1 << stage;
    int half_m = m >> 1;

    for (int K=0; K < size / m; K++) {
      int k = K * m;

      for (int j=0; j<half_m; j++) {
        int t = k + j;
        int u = t + half_m;
        fixed w_rel = twiddle_rel(j, m);
        fixed w_img = twiddle_img(j, m);

        fixed tmp_rel = fixed_mul(out_rel[u], w_rel) - fixed_mul(out_img[u], w_img);
        fixed tmp_img = fixed_mul(out_rel[u], w_img) + fixed_mul(out_img[u], w_rel);

        out_rel[u] = out_rel[t] - tmp_rel;
        out_rel[t] = out_rel[t] + tmp_rel;

        out_img[u] = out_img[t] - tmp_img;
        out_img[t] = out_img[t] + tmp_img;
      }
    }
  }
}
