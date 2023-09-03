@echo off

set FULL_FILENAME=%~1
set FILENAME=%~n1
set DIRNAME=%~dp1
set FILE_EXT=%~x1
set FILENAME_EXT=%FILENAME%%FILE_EXT%

REM DEBUG
REM echo Full File Name: "%FULL_FILENAME%"
REM echo File Name: "%FILENAME%"
REM echo File Directory: "%DIRNAME%"
REM echo File Extension: "%FILE_EXT%"
REM echo File Name with Extension: "%FILENAME_EXT%"

REM Change Directory
cd "%DIRNAME%"

echo ===============================================
echo Executing  %FILENAME%.exe  ...
echo ===============================================

set CPP_BIN=g++

set CPP_EXT1=.c++
set CPP_EXT2=.cpp
set CPP_EXT3=.cxx

IF /I %FILE_EXT% == %CPP_EXT1% GOTO __CPPEXEC
IF /I %FILE_EXT% == %CPP_EXT2% GOTO __CPPEXEC
IF /I %FILE_EXT% == %CPP_EXT3% GOTO __CPPEXEC
GOTO END

:__CPPEXEC
REM Execute C++ Programs
REM Check if file exists
if exist "%FILENAME%.exe" (
    call "%FILENAME%.exe"
) else (
    echo %FILENAME%.exe : Executable file not found!!! Please compile before executing...
)

GOTO END

:END
echo.
echo ===============================================
echo Execution - Completed !!!
pause
exit 0
