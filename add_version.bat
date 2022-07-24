@echo off

set ADDTEXT=%~t1
set ADDTEXT=%ADDTEXT:/=%
set ADDTEXT=%ADDTEXT:~0,8%

set NEWFILENAME="%~n1.v%ADDTEXT%%~x1"

SET A=%~a1

IF %A:~0,1%==d xcopy /E /I %1 %NEWFILENAME%
IF %A:~0,1%==- copy %1 %NEWFILENAME%
