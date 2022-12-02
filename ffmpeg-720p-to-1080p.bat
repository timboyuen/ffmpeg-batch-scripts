@echo off
set extn=%~1%
set extn=%extn:~0,-4%

ffmpeg -i "%~1" -vf scale="1.5*iw:1.5*ih" -y "%extn%_to2k.mp4"
pause