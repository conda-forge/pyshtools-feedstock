set FC=%BUILD_PREFIX%\Library\bin\flang.exe
set "LDFLAGS=%LDFLAGS% -llapack -lblas"
set "AR=lld-link.exe"

%PYTHON% -m pip install . -vv
