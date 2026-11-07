@echo off
title Push Nandhini's Website to GitHub
cd /d "%~dp0"

echo ======================================================================
echo    Pushing Birthday Surprise Website to GitHub:
echo    https://github.com/Ramcharanteja-web/for-you
echo ======================================================================
echo.

git status
echo.
echo Pushing to main branch...
git push -u origin main

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ==================================================================
    echo    SUCCESS! Pushed successfully to GitHub!
    echo    Visit: https://github.com/Ramcharanteja-web/for-you
    echo ==================================================================
) else (
    echo.
    echo ==================================================================
    echo    NOTE: If you got a 403 Permission error, Windows Credential
    echo    Manager is currently using your other GitHub account:
    echo    'ramcharantejadarelli629-web'
    echo.
    echo    You can either:
    echo    1. Add 'ramcharantejadarelli629-web' as a Collaborator with Write
    echo       permission in repository settings at:
    echo       https://github.com/Ramcharanteja-web/for-you/settings/access
    echo.
    echo    OR
    echo    2. Paste your GitHub Personal Access Token below to push right now.
    echo ==================================================================
    set /p GHTOKEN="Enter GitHub Personal Access Token (or press Enter to exit): "
    if not "%GHTOKEN%"=="" (
        git push https://%GHTOKEN%@github.com/Ramcharanteja-web/for-you.git main
    )
)

echo.
pause

