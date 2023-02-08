@echo off
title Not Operator

set /p Name=Enter Your Name :- 

if Not "%Name%"=="Sajith" (echo Invalid) else (echo Hi, Sajith)

pause