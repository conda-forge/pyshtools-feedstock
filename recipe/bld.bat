set FC=%BUILD_PREFIX%\Library\bin\flang.exe
set "LDFLAGS=%LDFLAGS% -llapack -lblas"

REM Needed for compilation with flang_win64:
set LIB=%BUILD_PREFIX%\Library\lib;%LIB%

%PYTHON% -m pip install . -vv
