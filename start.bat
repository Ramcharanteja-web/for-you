@echo off
title Nandhini's Birthday Surprise Localhost Server
cd /d "%~dp0"
echo ==============================================================
echo    Starting Nandhini's Birthday Surprise Localhost Server...
echo    Localhost URL: http://localhost:5500
echo ==============================================================
timeout /t 1 /nobreak >nul
start http://localhost:5500
python run_server.py
pause

