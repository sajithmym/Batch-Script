@echo off
color E

echo.
@echo off
:: set DESKTOP_DIR=%USERPROFILE%\\Desktop
:: echo %DESKTOP_DIR%


:: This is a batch file to run the copy.ps1 file
powershell.exe -ExecutionPolicy Bypass -File "F:\\Bat Coding\\Sajith\\CopyScripts - mine\\f1.ps1"
echo.

:: This is a batch file to run the copy.ps1 file
powershell.exe -ExecutionPolicy Bypass -File "F:\\Bat Coding\\Sajith\\CopyScripts - mine\\f2.ps1"
echo.

pause