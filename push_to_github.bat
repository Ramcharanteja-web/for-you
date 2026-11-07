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
echo Pushing to main branch on GitHub...
git push --force -u origin main

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ==================================================================
    echo    SUCCESS! Pushed successfully to GitHub!
    echo    Visit: https://github.com/Ramcharanteja-web/for-you
    echo ==================================================================
) else (
    echo.
    echo ==================================================================
    echo    GitHub requires authorization for account: Ramcharanteja-web
    echo.
    echo    If you have a GitHub Personal Access Token, paste it below.
    echo    (Or get one here: https://github.com/settings/tokens/new?scopes=repo )
    echo ==================================================================
    set /p GHTOKEN="Enter GitHub Token (or press Enter to exit): "
    if not "%GHTOKEN%"=="" (
        git push --force https://%GHTOKEN%@github.com/Ramcharanteja-web/for-you.git main
    )
)

echo.
pause
