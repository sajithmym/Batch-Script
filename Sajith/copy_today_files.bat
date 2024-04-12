@echo off
color E

set "source_folder=C:\Users\mohamedsa\Desktop\Mohmed_Sajith\PLM Project\Excel"
set "destination_folder=C:\Users\mohamedsa\Desktop\Mohmed_Sajith\PLM Project\Text\tables\tables"

start "" "%source_folder%"
start "" "%destination_folder%"

REM Get today's date in the format YYYY-MM-DD
for /f "tokens=2-4 delims=/ " %%a in ('echo %date%') do (
    set "today_date=%%c-%%b-%%a"
)

REM Check if the source folder exists
if not exist "%source_folder%" (
    echo Source folder does not exist.
    exit /b
)

REM Check if the destination folder exists, if not, create it
if not exist "%destination_folder%" (
    mkdir "%destination_folder%"
)

REM Copy today's files from the source folder to the destination folder
xcopy "%source_folder%\*%today_date%*" "%destination_folder%" /s /i

echo.
echo    Source folder : "%source_folder%"
echo.
echo    Destination folder : "%destination_folder%"

echo.
echo Files for today copied successfully to the destination folder.

echo.
echo.

pause