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

#define WAVEFILE_SIZE 4096*16
extern float WAVEFILE[WAVEFILE_SIZE];

int machine_main() {
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
  init_frontend(&frontend, FIXED(5000), 44100, FIXED(44100/100));

  unsigned cycles = read_cycle();
  unsigned instrets = read_instret();
  int num_symbols = sdr_frontend(&frontend, samples, S, C, symbols, WAVEFILE_SIZE);
  printf("cycles: %d instret: %d\n", read_cycle() - cycles, read_instret() - instrets);

  for (int i=0; i < num_symbols; i++) {
    if (symbols[i] == -1) printf("-");
    else printf("%d", symbols[i]);
  }

  printf("\n");

  free(samples);
  free(symbols);
  free(C);
  free(S);

//  float *input_buffer = (float*)malloc(SIZE*sizeof(float));
//
//  char *out = (char*)malloc(SIZE*sizeof(char));
//
//  float* C = malloc((SIZE+BACKMAN_SIZE)*sizeof(float));
//  float* S = malloc((SIZE+BACKMAN_SIZE)*sizeof(float));
//  memset(C, 0, (BACKMAN_SIZE+SIZE)*sizeof(float));
//  memset(S, 0, (BACKMAN_SIZE+SIZE)*sizeof(float));
//
//  codec_t codec;
//  codec.polynomes[0] = 0b1001111;//0b1111001;
//  codec.polynomes[1] = 0b1101101;//0b1011011;
//  init_codec(&codec);
//
//  clock_t t = clock();
//
//  char* codec_input = lorem;
//  int len = codec_encode(&codec, codec_input, NULL);
//  bool* buffer = malloc(len * sizeof(bool));
//  codec_encode(&codec, codec_input, buffer);
//  printf("time: %.6f\n", (float)(clock()-t) / CLOCKS_PER_SEC);
//
//  for (int i=0; i < len; i++) printf("%d", buffer[i]);
//  printf("\n");
//
//  printf("before encode: %ld after encode: %d\n", 8*strlen(codec_input), len);
//
//  char* decode_buffer = malloc((len+1) * sizeof(char));
//  memset(decode_buffer, 0, len+1);
//
//  for (int i=0; i < len; i++) decode_buffer[i] = buffer[i]+'0';
//
//  char* inverse_hello_world = "00001101000100000100111011010010001101000111101001100101110100111111000010101001101111111100011101001000000010001011101111011000";
//
//  t = clock();
//  codec_decode(&codec, decode_buffer, NULL);
//  printf("time: %.6f\n", (float)(clock()-t) / CLOCKS_PER_SEC);
//
//  free(buffer);
//#if 0
//  complex* fft_buf = malloc(4096*sizeof(complex));
//  clock_t t1 = clock();
//
//  float min = -10;
//  float max = 10;
//
//  int bsize = 1024;
//  for (int j=0; j < 1024; j++) {
//    size_t size = fread(input_buffer, sizeof(float), bsize, stdin);
//    if (size != bsize) break;
//
//    rfft(input_buffer, fft_buf, bsize);
//
//    for (int i=0; i < bsize; i++) fft_buf[i] = log10(cabs(fft_buf[i]));
//
//    float minimum = INFINITY;
//    float maximum = -INFINITY;
//    for (int i=0; i < bsize; i++) minimum = fmin(minimum, creal(fft_buf[i]));
//    for (int i=0; i < bsize; i++) maximum = fmax(maximum, creal(fft_buf[i]));
//    if (minimum == minimum && abs(minimum) > -100) min += 0.1 * (minimum - min);
//    if (maximum == maximum) max += 0.1 * (maximum - max);
//
//    int half_bsize = bsize/2;
//    for (int i=0; i < half_bsize; i++) {
//      float val = 0.8 * (creal(fft_buf[i]) - min) / (max - min);
//      if (val > 1) val = 1;
//      if (val < 0) val = 0;
//
//      color_graph(255 * val, 255*val, 255*val);
//      draw_graph((float)(2*i)/half_bsize - 1, (float)(j)/480 - 1);
//      draw_graph((float)(2*i)/half_bsize - 1 + 1.0/640, (float)(j)/480 - 1);
//    }
//
//    if (j % 8 == 0) render_graph();
//  }
//
//  clock_t t2 = clock();
//  printf("filter time: %f\n", (float)(t2-t1) / CLOCKS_PER_SEC);
//
//  free(fft_buf);
//#else
//  frontend_t frontend;
//  init_frontend(&frontend, 5000, 44100, 44100/SAMPLE_PER_SYMBOL);
//
//  int total_symbols = 0;
//  float total_time = 0;
//  int total_size = 0;
//
//  while (true) {
//    size_t size = fread(input_buffer, sizeof(float), 4096*128, stdin);
//    total_size += size;
//    if (!size) break;
//
//    clock_t t1 = clock();
//    int n = sdr_frontend(&frontend, input_buffer, C, S, out, size);
//    clock_t t2 = clock();
//    total_symbols += n;
//
//    total_time += (float)(t2-t1) / CLOCKS_PER_SEC;
//
//    printf("filter rate: %.4f Msps\n", 1e-6 * total_size / total_time);
//
//    printf("receive %d symbols:\n", n);
//    for (int i=0; i < n; i++) {
//      if (out[i] < 0) printf("-");
//      else printf("%d", out[i]);
//    }
//    printf("\n");
//
//    render_graph();
//  }
//
//  printf("receive %d symbols in total\n", total_symbols);
//#endif
//
//  free(input_buffer);
//  free(out);
//  free(C);
//  free(S);
//
//
//  fflush(stdout);
//  render_graph();
//  while (true) {}
}
