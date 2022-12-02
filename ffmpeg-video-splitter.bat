@echo ON
set extn=%~1%
set extn=%extn:~0,-4%

set /p id="Split how many minutes per clip (1-9minutes)?%NL% " 

IF %id% GEQ 10 (
ffmpeg -i "%~1" -c copy -map 0 -segment_time 00:%id%:00 -f segment "%extn%_%%03d.mp4"
) ELSE (
ffmpeg -i "%~1" -c copy -map 0 -segment_time 00:0%id%:00 -f segment "%extn%_%%03d.mp4"
)
pause