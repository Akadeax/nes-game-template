SET WORKSPACE_DIR=%~dp0

SET BUILD_DIR=build
SET SRC_DIR=src

SET MAIN=main
SET CFG=game.cfg
SET CHR=game.chr
SET OUT_NAME=MyGame

@call scripts/cleanup.bat
@call scripts/assemble.bat
@call scripts/link.bat

@echo Build successful, output to: %BUILD_DIR%\%OUT_NAME%.nes
