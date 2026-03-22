#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>
#include "stdlib.h"

#include "codec.h"

#define POLYNOME_MASK ((1 << POLYNOME_LEN) - 1)
#define STATE_MASK ((1 << (POLYNOME_LEN-1)) - 1)
#define NUM_STATES (1 << (POLYNOME_LEN - 1))

// A state is a set of POLYNOME_LEN-1 bits
typedef uint32_t state_t;

// A symbol is a set of NUM_POLYNOME bits
typedef uint32_t symbol_t;

#define MAX_HAMMING 65536

// Return the n-th bit of an integer
#define GET_BIT(integer, n) (1 & ((integer) >> (n)))

// Select the n-th bit
#define SET_BIT(bit, n) ((1 & (bit)) << (n))

// Combine a state and an input to compute it's image by a polynome
#define COMBINE(state, input) \
  (((state) << 1) | ((state_t)(input) & 1))

// Return the successor of a state for a given input
#define NEXT_STATE(state, input) \
  (COMBINE(state, input) & STATE_MASK)

// Return the predecessor of a state knowing the removed input
#define PREV_STATE(state, input) \
  ((((input) & 1) << (POLYNOME_LEN-2)) | ((state) >> 1))

// Return the last input of a state
#define HEAD_STATE(state) ((state) & 1)

static symbol_t polynomes_mask(int stage) {
  if (stage % 4 != 0) return 0b10;
  return 0b11;
}

void init_codec(codec_t *codec) {
  for (int i=0; i < NUM_POLYNOME; i++) {
    for (int j=0; j < 1 << POLYNOME_LEN; j++) {
      bool out = false;

      for (int k=0; k < POLYNOME_LEN; k++) {
        bool p = (codec->polynomes[i] >> k) & 1;
        bool i = (j >> k) & 1;
        out ^= (p & i);
      }

      codec->outputs[i][j] = out;
    }
  }
}

// `output` contains `POLYNOME_LEN-1` elements
int codec_encode(codec_t *codec, char* input, bool* output) {
  int bit = 0;
  int index = 0;
  state_t state = 0;
  size_t size = strlen(input);
  for (int byte=0; byte < size; byte++) {
    char character = input[byte];

    for (int offset=0; offset < 8; offset++) {
      bool in = GET_BIT(character, offset);

      for (int poly=0; poly < NUM_POLYNOME; poly++) if (GET_BIT(polynomes_mask(bit), poly)) {
        if (output) output[index] = codec->outputs[poly][COMBINE(state, in)];
        index++;
      }

      state = NEXT_STATE(state, in);
      bit++;
    }
  }

  for (int flush=0; flush < POLYNOME_LEN-1; flush++) {
    for (int poly=0; poly < NUM_POLYNOME; poly++) if (GET_BIT(polynomes_mask(bit), poly)) {
      if (output) output[index] = codec->outputs[poly][COMBINE(state, 0)];
      index++;
    }

    state = NEXT_STATE(state, 0);
    bit++;
  }

  return index;
}

///////////////////////////////////////////////////////////////////////////////////////////////////
// For a transition between a state `s0` and a state `s1`, return the Hamming distance between the
// received symbol and the expected symbol for that transition
///////////////////////////////////////////////////////////////////////////////////////////////////
static int branch_metric(codec_t* codec, int depth, state_t s0, state_t s1, symbol_t recv) {
  symbol_t out = 0;
  for (int poly=0; poly < NUM_POLYNOME; poly++) if (GET_BIT(polynomes_mask(depth), poly))
    out |= SET_BIT(codec->outputs[poly][COMBINE(s0, HEAD_STATE(s1))], poly);

  return __builtin_popcount(out ^ recv);
}

///////////////////////////////////////////////////////////////////////////////////////////////////
// Return the best possible Hamming cost to a given state in `depth` transitions knowing the results
// in `depth-1` transitions and the received symbol for that transition. This function overwrite the
// input state with the best predecessor found
///////////////////////////////////////////////////////////////////////////////////////////////////
static int compute_path_metric
  (codec_t* codec, int depth, int* path_metric, state_t *state, symbol_t recv) {

  state_t s0 = PREV_STATE(*state, 0);
  int cost0 = branch_metric(codec, depth, s0, *state, recv) + path_metric[s0];

  state_t s1 = PREV_STATE(*state, 1);
  int cost1 = branch_metric(codec, depth, s1, *state, recv) + path_metric[s1];

  if (cost1 < cost0) {
    *state = s1;
    return cost1;
  } else {
    *state = s0;
    return cost0;
  }
}

int codec_decode(codec_t *codec, char* input, char* output) {
  size_t size = strlen(input);

  int* old_path_metric = (int*)malloc(sizeof(int) * NUM_STATES);
  int* new_path_metric = (int*)malloc(sizeof(int) * NUM_STATES);
  state_t* trellis = (state_t*)malloc(size * NUM_STATES * sizeof(state_t));
  int trellis_size = 0;

  for (int i=0; i < NUM_STATES; i++) old_path_metric[i] = i == 0 ? 0 : MAX_HAMMING;

  int index = 0;
  for (int depth=0; depth < size; depth++) {
    symbol_t recv = 0;
    for (int poly=0; poly < NUM_POLYNOME; poly++)
      if (GET_BIT(polynomes_mask(depth), poly) && index < size)
        recv |= SET_BIT(input[index++] - '0', poly);

    for (state_t dst_state=0; dst_state < NUM_STATES; dst_state++) {
      state_t src_state = dst_state;
      int cost = compute_path_metric(codec, depth, old_path_metric, &src_state, recv);
      trellis[trellis_size * NUM_STATES + dst_state] = src_state;
      new_path_metric[dst_state] = cost;
    }

    int* tmp_path_metric = old_path_metric;
    old_path_metric = new_path_metric;
    new_path_metric = tmp_path_metric;
    trellis_size++;
  }

  state_t last_state;
  int hamming = MAX_HAMMING;
  for (int i=0; i < NUM_STATES; i++) {
    if (old_path_metric[i] < hamming) {
      last_state = trellis[(trellis_size-1) * NUM_STATES + i];
      hamming = i;
    }
  }

  char *buffer = malloc((trellis_size+1) * sizeof(char));
  if (output) for (int i=0; i < trellis_size+1; i++) output[i] = 0;
  for (int i=0; i < trellis_size+1; i++) buffer[i] = 0;

  for (int i=0; i < trellis_size; i++) {
    int idx = trellis_size - 1 - i;

    buffer[idx/8] |= SET_BIT(last_state, idx%8);
    if (output) output[idx/8] |= SET_BIT(last_state, idx % 8);
    last_state = trellis[idx * NUM_STATES + last_state];
  }

  printf("%s\n", buffer);

  free(old_path_metric);
  free(new_path_metric);
  free(trellis);

  return trellis_size+1;
}
