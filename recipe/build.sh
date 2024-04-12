#!/bin/bash
export LDFLAGS="${LDFLAGS} -llapack -lblas -lfftw3 -lfftw3f"
export LDFLAGS_LD="${LDFLAGS_LD} -llapack -lblas -lfftw3 -lfftw3f" 
${PYTHON} -m pip install . -vv
