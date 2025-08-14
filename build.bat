@echo off
setlocal enabledelayedexpansion

:: mapping
set MOD_ROOT=%CD%
set MOD_PATH=%LOCALAPPDATA%\Plutonium\storage\t6\mods
set "MOD_INPT=%MOD_ROOT%\initiative"
set "MOD_OUPT=%MOD_ROOT%\scripts"
set "MOD_MERG=%MOD_OUPT%\%MOD_NAME%.gsc"

pause
endlocal