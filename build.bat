@echo off

setlocal enabledelayedexpansion

:: Mapping
set MOD_PATH=%CD%

for %%a in (%MOD_PATH%) do set MOD_NAME=%%~nxa

set MOD_INPUT=%MOD_PATH%\<custom folder>
set MOD_OUTPUT=%MOD_PATH%\<output folder>

set MOD_OUTPUT_FINAL=%MOD_OUTPUT%\%MOD_NAME%.<file extension>

:: Index input entries
set INDEX=0

for /r %MOD_INPUT% %%f in (*.gsc) do (
    set /a INDEX+=1
    set MEMORY[!INDEX!]=%%f
)

:: Merge all index input entries
for /l %%n in (1,1,%INDEX%) do (
    type !MEMORY[%%n]!>>%MOD_OUTPUT_FINAL%
    if not %%n==%INDEX% (
        (echo.)>>%MOD_OUTPUT_FINAL%
        (echo.)>>%MOD_OUTPUT_FINAL%
    )
)

pause

endlocal
