@echo off
title Check Files

if exist "Input.bat" (
    echo Input.bat is available
    echo Now opening Input.bat
    echo.
    "Input.bat"
) else (
    echo file Not Available
)

pause