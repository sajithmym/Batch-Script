@echo off
setlocal enabledelayedexpansion
color B

echo.
echo Welcome to the backup script
echo.

set "source=C:\Users\mohamedsa\Desktop\Mohmed_Sajith\Full Stack\NestJs CRUD\front-end"
set "destination=C:\Users\mohamedsa\Desktop\Mohmed_Sajith\Full Stack\New folder"
set "timestamp=%date:/=_%_%time::=-%"
set "backup=%destination%\Backup_%timestamp%"

:: Create a backup of the existing files in the destination directory
mkdir "%backup%"

:: Move the directories that do not start with Backup, cache, node_modules, .angular, or .vscode to the backup directory
for /D %%X in ("%destination%\*") do (
    set "folder=%%~nX"
    if not "!folder:~0,6!"=="Backup" if not "!folder:~0,5!"=="cache" if not "!folder!"=="node_modules" if not "!folder!"==".angular" if not "!folder!"==".vscode" (
        echo "%%X"
    )
)

:: Move the files to the backup directory
for %%Y in ("%destination%\*") do (
    set "file=%%~nY"
    if not "!file:~0,6!"=="Backup" (
        echo "%%Y"
    )
)

pause