@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

:: Get the full path to the script (this batch file must be in the same directory as the .ps1)
set "SCRIPT=Win11_Ultimate_Optimizer_Fixed.ps1"
set "SCRIPT_PATH=%~dp0%SCRIPT%"

:: Sanity check
if not exist "%SCRIPT_PATH%" (
    echo ERROR: Could not find "%SCRIPT_PATH%"
    pause
    exit /b 1
)

:: Check if we are running as admin
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if NOT "%errorlevel%"=="0" (
    echo Requesting administrative privileges...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

:: Run the PowerShell script with execution policy bypass
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%SCRIPT_PATH%"

ENDLOCAL
pause
