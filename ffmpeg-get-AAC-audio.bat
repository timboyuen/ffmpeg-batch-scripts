@echo off 
setlocal
ECHO "%~1"
set _filename=%~n1
set _extension=%~x1
ECHO %_filename%

REM TAKE OUT THE AUDIO TO HE-AAC v2
REM echo ffmpeg -i "%~1" -c:a libfdk_aac -profile:a aac_he_v2 -b:a 32k "%_filename%.m4a" -y
REM ffmpeg -i "%~1" "%_filename%.mp3" -y
ffmpeg -i "%~1" -vn -c:a aac -b:a 192k  "%_filename%.m4a" -y


endlocal  
pause