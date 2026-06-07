@echo off
title Minecraft accounts.json Generator
color 0A

echo ================================
echo   Minecraft Account Generator
echo ================================
echo.

set /p username=Enter Username: 

if "%username%"=="" (
    echo.
    echo Please enter a username.
    pause
    exit
)

set output=accounts.json

(
echo {
echo     "accounts": [
echo         {
echo             "active": true,
echo             "entitlement": { "canPlayMinecraft": true, "ownsMinecraft": true },
echo             "profile": {
echo                 "capes": [],
echo                 "id": "%random%%random%%random%",
echo                 "name": "%username%",
echo                 "skin": { "id": "", "url": "", "variant": "" }
echo             },
echo             "type": "Offline",
echo             "ygg": {
echo                 "extra": {
echo                     "clientToken": "%random%%random%%random%",
echo                     "userName": "%username%"
echo                 },
echo                 "iat": 0,
echo                 "token": "0"
echo             }
echo         }
echo     ],
echo     "formatVersion": 3
echo }
) > "%output%"

echo.
echo Generated: %output%
echo.
type "%output%"
echo.
pause