#ifndef FFT_H
#define FFT_H

#include "fixed.h"

void init_fft();

void fft(fixed* in_rel, fixed* in_img, fixed* out_rel, fixed* out_img, unsigned size);

#endif
