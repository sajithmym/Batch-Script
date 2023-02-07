@echo off
title check_user_by_Label

:sajith
cls
set /p user="Enter Your Name: "
if "%user%"=="sajith" (
    goto Welcome
) else (
    goto elsepart
)

:Welcome
echo Welcome Admin
pause
goto sajith

:elsepart
echo User Name Invalid
pause
goto sajith

