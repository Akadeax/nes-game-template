cd %WORKSPACE_DIR%
mkdir %BUILD_DIR%
@echo Build directory created.
@echo Compiling...
\cc65\bin\ca65 %SRC_DIR%\%MAIN%.s -g -o %BUILD_DIR%\%MAIN%.o

@IF ERRORLEVEL 1 GOTO failure
@echo Compiled successfully.
@GOTO endbuild

:failure
@echo Compilation error!

:endbuild
