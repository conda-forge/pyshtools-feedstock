set "LDFLAGS=%LDFLAGS% -llapack -lblas"

%PYTHON% -m pip install . -vv
