@echo off
title Ping Command
set /p Name=Enter your Adress : 
echo Hay! %Name%
ping %Name%
pause