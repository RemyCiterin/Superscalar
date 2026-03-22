// #include "graph.h"
// #include "backman.h"
// #include "frontend.h"
// #include "codec.h"
//
// #undef I
//
#define SIZE 0x10000
// #define SAMPLE_PER_SYMBOL 100

#include <stdbool.h>

#include "stdlib.h"
#include "fixed.h"
#include "backman.h"
#include "fft.h"
#include "frontend.h"

#define WAVEFILE_SIZE (4096*32)
extern float WAVEFILE[WAVEFILE_SIZE];

int machine_main() {
  print_fixed(fixed_mul(2*16*PI, FIXED(401) / 44100));
  printf("\n");

  while (1) {}
  init_fft();
  init_backman();

  fixed* C = malloc((SIZE+BACKMAN_SIZE) * sizeof(fixed));
  fixed* S = malloc((SIZE+BACKMAN_SIZE) * sizeof(fixed));
  memset(C, 0, (SIZE+BACKMAN_SIZE) * sizeof(fixed));
  memset(S, 0, (SIZE+BACKMAN_SIZE) * sizeof(fixed));

  fixed* samples = malloc(SIZE * sizeof(fixed));
  int8_t* symbols = malloc(SIZE * sizeof(char));

  printf("C address: 0x%x\n", C);
  printf("S address: 0x%x\n", S);

  printf("samples address: 0x%x\n", samples);
  printf("symbols address: 0x%x\n", symbols);

  for (int i=0; i < WAVEFILE_SIZE; i++) samples[i] = FIXED(WAVEFILE[i]);

  if (false) for (int i=0; i < WAVEFILE_SIZE; i++) {
    printf("samples[%d] = ", i);
    print_fixed(samples[i]);
    printf("\n");
  }

  frontend_t frontend;
  init_frontend(&frontend, FIXED(5000) / 8, 44100 / 8, FIXED(44100/100));

  int cycles = -(int)(read_cycle());
  int instrets = -(int)(read_instret());
  int num_symbols = sdr_frontend(&frontend, samples, S, C, symbols, WAVEFILE_SIZE);
  instrets += read_instret();
  cycles += read_cycle();

  printf("cycles: %d instret: %d\n", cycles, instrets);

  for (int i=0; i < num_symbols; i++) {
    if (symbols[i] == -1) printf("-");
    else printf("%d", symbols[i]);
  }

  printf("\n");

  free(samples);
  free(symbols);
  free(C);
  free(S);
}
