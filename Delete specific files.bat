@echo off
REM Delete all .vtt files in the current directory
del /s /q *.vtt

REM Recursively check all subdirectories and delete .vtt files
for /r %%x in (*.vtt) do del /s /q "%%x"

echo All .vtt files have been deleted.
pause
