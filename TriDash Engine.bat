@echo off
setlocal enableDelayedExpansion
title TriDash Engine
echo Note
echo ------------------------------------------------------------------
echo This is Tridash Engine Developement Release for support, send
echo the release code 110721 to the creator of the game engine.
echo Also if you would like to create your own  version of this game
echo engine, you are free to use the source code and for the release
echo code, go to the Release Codes.txt file. However, if you would like
echo support me you can do it my adding the code of support_me.txt
echo into your game. :D
echo.
echo Thanks for reading, -Ixe
echo.
echo (ixeblade1@gmail.com) for support
echo.
echo (Press any key to start the engine)
pause >nul
:menu
cls
type gui\logo.gui
echo.
echo.
echo.
echo Welcome, %username%!
echo.
echo Please choose an option to get started.
echo.
echo 1) Create new Project
echo 2) Import an existing project
echo 3) Export a project into a Batch file
CHOICE /N /C:123 /M " "%1
IF ERRORLEVEL == 1 goto new
IF ERRORLEVEL == 2 goto import
IF ERRORLEVEL == 3 goto export
:new

:import

:export
cls
echo Please choose the project name to export. (type without .triproject extension)
set /p projectname=
rename projects\%projectname%.triproject %projectname%.bat
echo Export Complete, check the Projects folder again.
echo Press any key go back to the Menu...
pause>nul
goto menu

