@echo off 
setlocal
ECHO "%~1"
set _filename=%~n1
set _extension=%~x1
ECHO %_filename%

REM TAKE OUT THE AUDIO TO HE-AAC v2
ffmpeg -i "%~1" -vn -q:a 0 "%_filename%.mp3" -y
REM ffmpeg -i "%~1" -vn -c:a aac -b:a 192k  "%_filename%.m4a" -y


endlocal  
pause