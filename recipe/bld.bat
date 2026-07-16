set "LDFLAGS=%LDFLAGS% -llapack -lblas"

rem need to override c link args, as currently clang style args are passed to windows LINK.exe
set "C_LINK_ARGS=%BUILD_PREFIX%\lib\clang\21\lib\windows\clang_rt.builtins-x86_64.lib"
set "C_LINK_ARGS=%C_LINK_ARGS% %BUILD_PREFIX%\Library\lib\clang\21\lib\x86_64-pc-windows-msvc\flang_rt.runtime.dynamic.lib"
set "C_LINK_ARGS=%C_LINK_ARGS% %PREFIX%\Library\lib\blas.lib"
set "C_LINK_ARGS=%C_LINK_ARGS% %PREFIX%\Library\lib\lapack.lib"

%PYTHON% -m pip install --no-build-isolation . -vv -Csetup-args="-Dc_link_args=%C_LINK_ARGS%"
