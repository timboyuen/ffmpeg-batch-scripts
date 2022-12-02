@echo off
set extn=%~1%
set extn=%extn:~0,-4%

ffmpeg -i "%~1" -y -c:v copy -ar 44100 "%extn%_to44.1khz.mp4"
pause