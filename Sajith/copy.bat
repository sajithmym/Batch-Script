@echo off
set "source_folder=C:\Users\mohamedsa\Desktop\Mohmed_Sajith\PLM Project\Excel"
set "destination_folder=C:\Users\mohamedsa\Desktop\Mohmed_Sajith\PLM Project\Text\tables\tables"

start "" "%source_folder%"
start "" "%destination_folder%"

REM Get today's date at midnight
for /f "tokens=1-3 delims=/" %%a in ('echo %date%') do (
    set "mm=%%a"
    set "dd=%%b"
    set "yyyy=%%c"
)
set "today_date=%yyyy%-%mm%-%dd%"

REM Get the files in the source folder that were created today
for %%f in ("%source_folder%\*.*") do (
    for %%A in ("%%~tf") do (
        echo "%%~tA" geq "%today_date%"
        if "%%~tA" geq "%today_date%" (
            REM Copy the files to the destination folder
            copy "%%f" "%destination_folder%"
        )
    )
)

echo Source folder: %source_folder%
echo Destination folder: %destination_folder%
echo Files for today copied successfully to the destination folder.

pause