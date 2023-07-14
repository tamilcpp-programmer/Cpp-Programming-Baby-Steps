@echo off

set FULL_FILENAME=%~1
set FILENAME=%~n1
set DIRNAME=%~dp1
set FILE_EXT=%~x1
set FILENAME_EXT="%FILENAME%%FILE_EXT%"

REM DEBUG
REM echo Full File Name: "%FULL_FILENAME%"
REM echo File Name: "%FILENAME%"
REM echo File Directory: "%DIRNAME%"
REM echo File Extension: "%FILE_EXT%"
REM echo File Name with Extension: "%FILENAME_EXT%"

set CC_BIN=gcc
set CPP_BIN=g++

set CC_EXT=.c
set CPP_EXT1=.c++
set CPP_EXT2=.cpp
set CPP_EXT3=.cxx

set CPP_OPTIONS=-std=c++20
set CPP_OPTIONS=
set LIB_FLAGS=
set INCLUDE_DIR=
set LIB_DIR=

REM Change Directory
cd "%DIRNAME%"

IF /I %FILE_EXT% == %CC_EXT%  GOTO __CCOMPILE
IF /I %FILE_EXT% == %CPP_EXT1% GOTO __CPPCOMPILE
IF /I %FILE_EXT% == %CPP_EXT2% GOTO __CPPCOMPILE
IF /I %FILE_EXT% == %CPP_EXT3% GOTO __CPPCOMPILE

GOTO END

:__CCOMPILE
echo --- Compiling C Program ... ---

REM -- Check for thread usage
findstr "thread" %FILENAME_EXT% >NUL
if ERRORLEVEL 0 set LIB_FLAGS=%LIB_FLAGS% -lpthread

call %CC_BIN% %FILENAME_EXT%  -o %FILENAME%.exe %LIB_FLAGS% & IF ERRORLEVEL 1 (echo. && echo "ERROR - Compilation Error - Please Fix !!!" ) ELSE echo "Compilation success !!!"
GOTO END

:__CPPCOMPILE
echo --- Compiling C++ Program ... ---

REM -- Check for thread usage
findstr /I "thread" %FILENAME_EXT% >NUL 2>&1
if ERRORLEVEL 1 (
    REM echo "No Threading..."
) else (
    set LIB_FLAGS=%LIB_FLAGS% -lpthread
)

findstr /I "c++11" %FILENAME_EXT% >NUL 2>&1
if ERRORLEVEL 1 (
    REM "C++ Program..."
) else (
    set CPP_OPTIONS=-std=c++11
)

findstr /I "c++17" %FILENAME_EXT% >NUL 2>&1
if ERRORLEVEL 1 (
    REM "C++ Program..."
) else (
    set CPP_OPTIONS=-std=c++17
)

echo "Compiling: %CPP_BIN% %INCLUDE_DIR% %FILENAME_EXT% -o %FILENAME%.exe %CPP_OPTIONS% %LIB_DIR% %LIB_FLAGS%"

call %CPP_BIN% %INCLUDE_DIR% %FILENAME_EXT% -o %FILENAME%.exe %CPP_OPTIONS% %LIB_DIR% %LIB_FLAGS% & IF ERRORLEVEL 1 (echo. && echo "ERROR - Compilation Error - Please Fix !!!" ) ELSE echo "Compilation success !!!"

GOTO END

:END
pause
exit /b 0
