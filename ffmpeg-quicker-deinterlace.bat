@echo off
set extn=%~1%
set extn=%extn:~0,-4%

rem motion compensation takes forever (mcdeint)
rem parity of field is set to auto (-1) ie; tff bff
rem ffmpeg -i "%~1" -y -vf yadif=1:-1:0,mcdeint=2:1:10 
ffmpeg -i "%~1" -y -vf yadif=1:-1:0 "%extn%_deint2.mp4"
pause