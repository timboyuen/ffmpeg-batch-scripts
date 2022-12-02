REM for %%F in (%*) do echo %%~nF: received %%~tF

@echo off
setlocal ENABLEDELAYEDEXPANSION
rem Take the cmd-line, remove all until the first parameter
set "params=!cmdcmdline:~0,-1!"
set "params=!params:*" =!"
set count=0

rem Split the parameters on spaces but respect the quotes
for %%G IN (!params!) do (
  set /a count+=1
  set "item_!count!=%%~G"
  rem echo !count! %%~G
)

rem list the parameters
for /L %%n in (1,1,!count!) DO (
REM  echo %%n #!item_%%n!#
     echo file '!item_%%n!' >> %CD%\__catlist.txt
)

ffmpeg -f concat -safe 0 -i %CD%\__catlist.txt -c copy merged_output.mp4

pause
del %CD%\__catlist.txt

REM ** The exit is important, so the cmd.ex doesn't try to execute commands after ampersands
exit