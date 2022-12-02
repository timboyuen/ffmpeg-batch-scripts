@echo off
set extn=%~1%
set extn=%extn:~0,-4%

ffmpeg -i "%~1" -map 0 -y -c:v libx265 -crf 18 -preset fast -c:a copy -c:s mov_text -metadata:s:s:0 language=eng -metadata:s:s:1 language=ipk "%extn%_crf18.mp4"
pause