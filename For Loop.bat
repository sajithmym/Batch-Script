@echo off
title ForLoop

for %%i in (5,6,7,8,9) do echo %%i
pause
cls

for /l %%i in (0,50,2000) do echo Mohamed Sajith -- %%i -- 

:execute
echo %random%

goto execute
pause