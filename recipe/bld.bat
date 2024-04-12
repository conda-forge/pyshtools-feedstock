set FC=%BUILD_PREFIX%\Library\bin\flang.exe
set "LDFLAGS=%LDFLAGS% -llapack -lblas"

%PYTHON% -m pip install . -vv
