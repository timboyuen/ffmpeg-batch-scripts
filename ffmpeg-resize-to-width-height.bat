@echo off &SETLOCAL
set extn=%~1%
set extn=%extn:~0,-4%


setlocal ENABLEDELAYEDEXPANSION

set /p width="Target Width?%NL% " 
set /p height="Target Height?%NL% " 

ffmpeg -i "%~1" -y -vf scale=%width%:%height% "%extn%_%width%_x_%height%.mp4"
pause