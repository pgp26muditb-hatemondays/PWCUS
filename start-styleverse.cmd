@echo off
cd /d "%~dp0"
title StyleVerse prototype
where node >nul 2>nul
if errorlevel 1 goto nonode
start "" http://127.0.0.1:4173/
node server.mjs
pause
exit /b
:nonode
echo Node.js is not installed. Opening the download page - install the LTS version, then double-click this file again.
start https://nodejs.org/
pause
