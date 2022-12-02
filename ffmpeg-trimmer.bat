@echo off &SETLOCAL
set extn=%~1%
set extn=%extn:~0,-4%


setlocal ENABLEDELAYEDEXPANSION

set /p id="Trim how many seconds from beginning?%NL% " 
set /p idend="Trim how many seconds from end?%NL% " 

FOR /F "tokens=* USEBACKQ" %%F IN (`CALL ffprobe -v error -show_entries format^=duration -of default^=noprint_wrappers^=1:nokey^=1  %1`) DO (
SET duration=%%F
echo %%F
)
SET /A tduration=%duration%
SET /A tduration-=%id%
SET /A tduration-=%idend%

rem echo %duration%
rem echo %tduration%
ffmpeg -ss %id% -i "%~1" -c copy -y -t %tduration% "%extn%_trim.mp4"
pause