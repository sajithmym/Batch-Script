@ECHO OFF
color E
TITLE Computer Details

echo.

REM Print '- ~' 30 times
SETLOCAL EnableDelayedExpansion
SET "output="
FOR /L %%i IN (1,1,30) DO (
    SET "output=!output!- ~ "
)
ECHO !output!

ECHO WINDOWS INFO =
systeminfo | findstr /c:"Host Name"
systeminfo | findstr /c:"OS Name"
systeminfo | findstr /c:"OS Version"
systeminfo | findstr /c:"System Manufacturer"
systeminfo | findstr /c:"System Model"

echo.

REM Print '- ~' 30 times
SETLOCAL EnableDelayedExpansion
SET "output="
FOR /L %%i IN (1,1,30) DO (
    SET "output=!output!- ~ "
)
ECHO !output!

ECHO HARDWARE INFO =
systeminfo | findstr /c:"Total Physical Memory"
wmic cpu get name | findstr /v "Name"
wmic diskdrive get caption,size,model
echo.

REM Print '- ~' 30 times
SETLOCAL EnableDelayedExpansion
SET "output="
FOR /L %%i IN (1,1,30) DO (
    SET "output=!output!- ~ "
)
ECHO !output!

ECHO NETWORK INFO =
ipconfig | findstr IPv4
ipconfig | findstr IPv6
ipconfig | findstr "Default Gateway"
ipconfig | findstr "DNS Servers"

REM Print '- ~' 30 times
SETLOCAL EnableDelayedExpansion
SET "output="
FOR /L %%i IN (1,1,30) DO (
    SET "output=!output!- ~ "
)
ECHO !output!

echo.

PAUSE