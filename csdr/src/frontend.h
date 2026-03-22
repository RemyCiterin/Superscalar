#ifndef FRONTEND_H
#define FRONTEND_H

#include "fixed.h"

typedef struct {
  // Number of symbols per second
  fixed symbol_rate0;
  fixed symbol_rate;

  // Number of samples per second
  int sample_rate;

  // Initial carrier frequency
  fixed carrier_freq0;
  fixed carrier_freq;

  // Carrier state for cos/sin compuration
  fixed carrier_cos;
  fixed carrier_sin;

  // PLL to learn the carrier frequency/phase
  fixed carrier_integrator;

  // PLL to learn the phase frequency/phase
  fixed symbol_integrator;

  // State of the symbol extractor state
  fixed symbol_phase;

  // Normalize the energy of the outputs of the low pass fitler
  fixed averager;

  // Differential decoder state
  char last_symbol;

  // Zero crossing detector
  fixed last_I;
  fixed last_Q;
} frontend_t;

void init_frontend(frontend_t *state, fixed freq, int sample_rate, fixed symbol_rate);

int sdr_frontend(frontend_t* state, fixed* samples, fixed* C, fixed* S, char* symbols, int size);

#endif
