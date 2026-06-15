set FC=%BUILD_PREFIX%\Library\bin\flang.exe
set "LDFLAGS=%LDFLAGS% -llapack -lblas"
set "AR=lld-link.exe"

rem override seutup-args here to account for old flang version (5) on windows
%PYTHON% -m pip install . -vv -Csetup-args=-Db_vscrt=none
