@echo off
set extn=%~1%
set extn=%extn:~0,-4%

setlocal ENABLEDELAYEDEXPANSION

set /p xoff="X offset ?%NL% " 
set /p yoff="Y offset ?%NL% " 
set /p width="Width of the boxed region ?%NL% " 
set /p height="Height of the boxed region ?%NL% " 



ffmpeg -f gdigrab -framerate 30 -offset_x %xoff% -offset_y %yoff% -video_size %width%x%height% -show_region 1 -i desktop output.mkv

pause