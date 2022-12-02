REM for %%F in (%*) do echo %%~nF: received %%~tF

@echo off
setlocal ENABLEDELAYEDEXPANSION
rem Take the cmd-line, remove all until the first parameter
set "params=!cmdcmdline:~0,-1!"
set "params=!params:*" =!"
set count=0
set extn=%~1%
set extn=%extn:~0,-4%

rem just for reference in using named pipe
rem (echo file 'a.mp4' & echo file 'b.mp4') | ffmpeg -protocol_whitelist file,pipe -f concat -safe 0 -i pipe: -vcodec copy -acodec copy "result.mp4"



rem Split the parameters on spaces but respect the quotes
for %%G IN (!params!) do (
  set /a count+=1
  set "item_!count!=%%~G"
  rem echo !count! %%~G
)


rem list the parameters
for /L %%n in (1,1,!count!) DO (
REM  echo %%n #!item_%%n!#
    ffmpeg -i "!item_%%n!" -c copy -bsf:v h264_mp4toannexb -f mpegts "%extn%-int%%n.ts"
    echo file '%extn%-int%%n.ts' >> %CD%\__tscatlist.txt
)

ffmpeg -f concat -safe 0 -i %CD%\__tscatlist.txt -c copy -bsf:a aac_adtstoasc merged-intermediates.mp4
del %CD%\__tscatlist.txt
pause

REM ** The exit is important, so the cmd.ex doesn't try to execute commands after ampersands
exit