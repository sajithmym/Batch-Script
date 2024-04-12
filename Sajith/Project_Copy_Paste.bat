@echo off
color B

setlocal enabledelayedexpansion

set "source=C:\Users\mohamedsa\Desktop\Mohmed_Sajith\Full Stack\Nest-Crud-V16\front-end"
set "destination=C:\Users\mohamedsa\Desktop\Mohmed_Sajith\Full Stack\New folder"
set "timestamp=%date:/=_%_%time::=-%"
set "backup=%destination%\Backup_%timestamp%"

:: Create a backup of the existing files in the destination directory
mkdir "%backup%"

:: Move the directories that do not start with Backup, cache, node_modules, .angular, or .vscode to the backup directory
for /D %%X in ("%destination%\*") do (
    set "folder=%%~nX"
    if /I not "!folder:~0,6!"=="Backup" if not "!folder!"=="cache" if not "!folder!"=="node_modules" if not "!folder!"==".angular" if not "!folder!"==".vscode" if not "!folder!"=="dist" (
        move "%%X" "%backup%"
    )
)

:: Move the files to the backup directory
for %%Y in ("%destination%\*") do (
    set "file=%%~nY"
    if /I not "!file:~0,6!"=="Backup" (
        move "%%Y" "%backup%"
    )
)

:: Copy the Node.js project to the destination directory, excluding the node_modules, .angular, and .vscode directories
robocopy "%source%" "%destination%" /E /COPY:DAT /XD "node_modules" ".angular" ".vscode" "dist"

:: Display the directories
echo.
echo Source: %source%
echo Destination: %destination%
:: Pause so you can see the output
pause

endlocal