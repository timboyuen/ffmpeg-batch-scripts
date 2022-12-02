@echo off
set extn=%~1%
set extn=%extn:~0,-4%

ffmpeg -i "%~1" -vf "transpose=1" -y "%extn%_rot.mp4"
pause