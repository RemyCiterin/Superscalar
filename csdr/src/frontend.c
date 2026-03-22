#include <stddef.h>
#include "frontend.h"
#include "backman.h"
#include "fixed.h"

#define DECIMATION  16

// Return `r` such that x = q*y+r (q is an integer) and -y/2 < r < y/2
fixed fmodulo(fixed x, fixed y) {
   while (x > y/2) x -= y;
   while (x < -y/2) x += y;
   return x;
}


void init_frontend(frontend_t *state, fixed freq, int sample_rate, fixed symbol_rate) {
  frontend_t frontend = {
    .carrier_integrator = FIXED(0),
    .symbol_integrator = FIXED(0),
    .symbol_rate0 = symbol_rate,
    .symbol_rate = symbol_rate,
    .sample_rate = sample_rate,
    .symbol_phase = FIXED(0),
    .carrier_cos = FIXED(1),
    .carrier_sin = FIXED(0),
    .carrier_freq0 = freq,
    .carrier_freq = freq,
    .last_symbol = 0,
    .averager = 1,
    .last_I = 0,
    .last_Q = 0,
  };

  *state = frontend;
}

static void debug_fixed(const char* str, fixed f) {
  printf(str);
  print_fixed(f);
  printf("\n");
}

int sdr_frontend(frontend_t* state, fixed* samples, fixed* C, fixed* S, char* symbols, int size) {
  fixed delta_cos = fixed_cos(2*fixed_mul(PI,state->carrier_freq) / state->sample_rate);
  fixed delta_sin = fixed_sin(2*fixed_mul(PI,state->carrier_freq) / state->sample_rate);
  debug_fixed("delta cos: ", delta_cos);
  debug_fixed("delta sin: ", delta_sin);
  int index = 0;

  int i;
  for (i=0; i + DECIMATION - 1 < size; i += DECIMATION) {
    ///////////////////////////////////////////////////////////////////////////////////////////////
    // Demodulate the signal using the in-phase and quadrature estimation of the carrier
    ///////////////////////////////////////////////////////////////////////////////////////////////
    for (int j=0; j < DECIMATION; j++) {
      fixed new_cos =
        fixed_mul(state->carrier_cos, delta_cos) - fixed_mul(state->carrier_sin, delta_sin);
      fixed new_sin =
        fixed_mul(state->carrier_cos, delta_sin) + fixed_mul(state->carrier_sin, delta_cos);
      C[i+j+BACKMAN_SIZE] = fixed_mul(new_cos, samples[i+j]);
      S[i+j+BACKMAN_SIZE] = fixed_mul(new_sin, samples[i+j]);
      state->carrier_cos = new_cos;
      state->carrier_sin = new_sin;
    }

    if (i % 1024 == 0) {
      //printf("index: %x\n", i);
      if (fixed_pow(state->carrier_cos,2) + fixed_pow(state->carrier_sin,2) > FIXED(2.0)) {
        state->carrier_cos /= 2;
        state->carrier_sin /= 2;
      }

      if (fixed_pow(state->carrier_cos,2) + fixed_pow(state->carrier_sin,2) < FIXED(0.5)) {
        state->carrier_cos *= 2;
        state->carrier_sin *= 2;
      }
    }

    // Low pass filter output is down-sampled
    /////////////////////////////////////////////////////////////////////////////////////////////
    // Backman low pass filter: eliminate the high frequency components after demodulation
    /////////////////////////////////////////////////////////////////////////////////////////////
    fixed I = filter_backman(&C[i]);
    fixed Q = filter_backman(&S[i]);
    //debug_fixed("I: ", I);
    //debug_fixed("Q: ", Q);

    /////////////////////////////////////////////////////////////////////////////////////////////
    // Average the signal for an average energy of 1
    /////////////////////////////////////////////////////////////////////////////////////////////
    I = fixed_mul(state->averager, I);
    Q = fixed_mul(state->averager, Q);
    state->averager += fixed_mul(FIXED(0.01), FIXED(1) - fixed_pow(I,2) - fixed_pow(Q,2));

    fixed prev_symbol_phase = state->symbol_phase;
    state->symbol_phase += fixed_mul(2*DECIMATION*PI, state->symbol_rate / state->sample_rate);
    while (state->symbol_phase > 2*PI) state->symbol_phase -= 2*PI;

    //debug_fixed("phase: ", state->symbol_phase);

    /////////////////////////////////////////////////////////////////////////////////////////////
    // Measure one symbol and update the carrier frequency using a PI controller
    /////////////////////////////////////////////////////////////////////////////////////////////
    if (prev_symbol_phase <= PI && state->symbol_phase > PI) {
      symbols[index++] = (I > 0) == state->last_symbol ? 0 : 1;
      state->last_symbol = I > 0;

      //printf("id: %d symbol: %x ", i, symbols[index-1]);
      //print_fixed(fixed_mul(2*DECIMATION*PI, state->symbol_rate / state->sample_rate));

      // The phase must be 0 or PI when we measure a symbol
      fixed theta = fixed_atan2(Q, I);
      fixed err = -fmodulo(theta, PI);
      state->carrier_integrator += fixed_mul(err, FIXED(0.001));

      state->carrier_freq =
        state->carrier_freq0 + fixed_mul(FIXED(0.1), err) + state->carrier_integrator;
      delta_cos = fixed_cos(2*fixed_mul(PI,state->carrier_freq / state->sample_rate));
      delta_sin = fixed_sin(2*fixed_mul(PI,state->carrier_freq / state->sample_rate));
      //debug_fixed(" carrier freq: ", state->carrier_freq);
      //debug_fixed(" Q: ", Q);
    }

    /////////////////////////////////////////////////////////////////////////////////////////////
    // Use the zero crossings to update the symbol rate using a PI controller
    /////////////////////////////////////////////////////////////////////////////////////////////
    if ((state->last_I < 0 && I >= 0) || (state->last_I >= 0 && I < 0)) {
      fixed err = -fmodulo(state->symbol_phase, 2*PI);
      state->symbol_integrator += fixed_mul(err, FIXED(0.001));

      state->symbol_rate = fixed_mul(
          state->symbol_rate0,
          FIXED(1) + fixed_mul(FIXED(0.05), err) + state->symbol_integrator
      );
      //debug_fixed("symbol rate: ", state->symbol_rate);

      if (PI / 2 < state->symbol_phase && state->symbol_phase < 3 * PI / 2)
        symbols[index++] = -1;
    }

    state->last_I = I;
    state->last_Q = Q;
  }

  for (int i=0; i < BACKMAN_SIZE; i++) C[i] = C[i+size];
  for (int i=0; i < BACKMAN_SIZE; i++) S[i] = S[i+size];

  return index;
}
