@echo off
set extn=%~1%
set extn=%extn:~0,-4%

ffmpeg -i "%~1" -vf scale="iw:ceil(1.777*iw), setdar=9/16" -y "%extn%_hafhfixed.mp4"
pause