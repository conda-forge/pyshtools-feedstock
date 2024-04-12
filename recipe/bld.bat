set "FC=%BUILD_PREFIX%\Library\bin\gfortran.exe"
set "LDFLAGS=%LDFLAGS% -llapack -lblas -lfftw3 -lfftw3f"

%PYTHON% -m pip install . -vv
