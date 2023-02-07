@echo off
title Aritmatic

set /p n1=Enter Number 1 : 
set /p n2=Enter Number 2 : 

set /a add=%n1% + %n2%
set /a sub=%n1% - %n2%
set /a m=%n1% * %n2%
set /a d=%n1% / %n2%
set /a mod=%n1% %% %n2%

echo.
echo --------------------------------------------------------------------------------------
echo Addition Is %add%
echo Subscription Is %sub%
echo Multipication Is %m%
echo Divition Is %d%
echo Module Is %mod%
echo --------------------------------------------------------------------------------------
echo.

pause