@echo off

set FULL_FILENAME=%~1
set FILENAME=%~n1
set DIRNAME=%~dp1
set FILE_EXT=%~x1
set FILENAME_EXT=%FILENAME%%FILE_EXT%


REM DEBUG
echo Full File Name: "%FULL_FILENAME%"
echo File Name: "%FILENAME%"
echo File Directory: "%DIRNAME%"
echo File Extension: "%FILE_EXT%"
echo File Name with Extension: "%FILENAME_EXT%"

set CPP_BIN=g++@echo off

REM Parse the command-line arguments
set FULL_FILENAME=%~1
set FILENAME=%~n1
set DIRNAME=%~dp1
set FILE_EXT=%~x1
set FILENAME_EXT=%FILENAME%%FILE_EXT%

REM DEBUG
echo Full File Name: "%FULL_FILENAME%"
echo File Name: "%FILENAME%"
echo File Directory: "%DIRNAME%"
echo File Extension: "%FILE_EXT%"
echo File Name with Extension: "%FILENAME_EXT%"

REM Compilers
set CPP_BIN=g++

REM File Extensions
REM C++ File Extensions
set CPP_EXT1=.c++
set CPP_EXT2=.cpp
set CPP_EXT3=.cxx

REM set CPP_OPTIONS=-std=c++11
set CPP_OPTIONS=
set LIB_FLAGS=
set INCLUDE_DIR=
set LIB_DIR=

REM Change Directory to the source file's directory
cd "%DIRNAME%"

REM branch based on file extensions
IF /I %FILE_EXT% == %CPP_EXT1% GOTO __CPPCOMPILE
IF /I %FILE_EXT% == %CPP_EXT2% GOTO __CPPCOMPILE
IF /I %FILE_EXT% == %CPP_EXT3% GOTO __CPPCOMPILE
GOTO END

:__CPPCOMPILE
echo --- Compiling C++ Program ... ---
set CPP_OPTIONS=-Wall -std=c++20
echo "Compiling : %CPP_BIN% %INCLUDE_DIR% %FILENAME_EXT% %CPP_OPTIONS%  -o %FILENAME%.exe %LIB_DIR% %LIB_FLAGS%"
call %CPP_BIN% %INCLUDE_DIR% %FILENAME_EXT% %CPP_OPTIONS%  -o %FILENAME%.exe %LIB_DIR% %LIB_FLAGS% & IF ERRORLEVEL 1 (echo. && echo "ERROR - Compilation Error - Please Fix !!!" ) ELSE echo "Compilation success !!!"

GOTO END

:END
pause
exit /b %ERRORLEVEL%



set CPP_EXT1=.c++
set CPP_EXT2=.cpp
set CPP_EXT3=.cxx

REM set CPP_OPTIONS=-std=c++11
set CPP_OPTIONS=
set LIB_FLAGS=
set INCLUDE_DIR=
set LIB_DIR=

REM Change Directory
cd "%DIRNAME%"

IF /I %FILE_EXT% == %CPP_EXT1% GOTO __CPPCOMPILE
IF /I %FILE_EXT% == %CPP_EXT2% GOTO __CPPCOMPILE
IF /I %FILE_EXT% == %CPP_EXT3% GOTO __CPPCOMPILE
GOTO END


:__CPPCOMPILE
echo --- Compiling C++ Program ... ---

set CPP_OPTIONS=-Wall -std=c++20

echo "Compiling : %CPP_BIN% %INCLUDE_DIR% %FILENAME_EXT% %CPP_OPTIONS%  -o %FILENAME%.exe %LIB_DIR% %LIB_FLAGS%"

call %CPP_BIN% %INCLUDE_DIR% %FILENAME_EXT% %CPP_OPTIONS%  -o %FILENAME%.exe %LIB_DIR% %LIB_FLAGS% & IF ERRORLEVEL 1 (echo. && echo "ERROR - Compilation Error - Please Fix !!!" ) ELSE echo "Compilation success !!!"

GOTO END

:END
pause
exit /b %ERRORLEVEL%
