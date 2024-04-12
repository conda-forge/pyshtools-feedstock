#!/bin/bash
export LDFLAGS="${LDFLAGS} -llapack -lblas" 
export LDFLAGS_LD="${LDFLAGS_LD} -llapack -lblas" 
${PYTHON} -m pip install . -vv
