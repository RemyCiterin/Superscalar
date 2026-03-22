#ifndef CODEC_H
#define CODEC_H

#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>

#define NUM_POLYNOME 2
#define POLYNOME_LEN 7

typedef struct {
  // Polynomes are encoded using the POLYNOME_LEN least significant bits
  uint32_t polynomes[NUM_POLYNOME];

  // For each state/input bits and polynome
  bool outputs[NUM_POLYNOME][1 << POLYNOME_LEN];
} codec_t;

void init_codec(codec_t* codec);

int codec_encode(codec_t *codec, char* input, bool* output);

int codec_decode(codec_t *codec, char* recv, char* output);

#endif
