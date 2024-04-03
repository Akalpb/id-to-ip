@echo off
setlocal enabledelayedexpansion

echo.
echo  █████╗ ██╗  ██╗ █████╗ 
echo ██╔══██╗██║ ██╔╝██╔══██╗
echo ███████║█████╔╝ ███████║
echo ██╔══██║██╔═██╗ ██╔══██║
echo ██║  ██║██║  ██╗██║  ██║
echo ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝
echo.

:MENU
echo [1] Donner l'ID de la personne
echo [2] Fermer le script
echo.
set /p choice=Entrez votre choix: 

if "%choice%"=="1" (
    set /p id=Entrez l'ID de la personne : 
    echo [-] Récupération de l'adresse IP en cours...
    call :LOADING
    timeout /t 5 >nul
    call :GENERATE_FAKE_IP
    echo.
    echo [-] Adresse IP : !fakeIP!
    goto MENU
) else if "%choice%"=="2" (
    exit /b
) else (
    echo.
    echo Choix invalide. Veuillez choisir une option valide.
    goto MENU
)

:LOADING
echo [+] recolte de donner
timeout /t 1 >nul
echo [+] donner ip
timeout /t 1 >nul
echo [+] Grab Ip
timeout /t 1 >nul
echo [+]Aka Ip Grabber
timeout /t 1 >nul
echo [+]Aka Ip Grabber
timeout /t 1 >nul
echo [+]Aka Ip Grabber
timeout /t 1 >nul
echo [+]Aka Ip Grabber
timeout /t 1 >nul
echo [+]Aka Ip Grabber
timeout /t 1 >nul
echo [+]Aka Ip Grabber
timeout /t 1 >nul
goto :eof

:GENERATE_FAKE_IP
set "fakeIP="
for /l %%i in (1,1,4) do (
    set /a "segment=!random! %% 256"
    set "fakeIP=!fakeIP!.!segment!"
)
set "fakeIP=!fakeIP:~1!"
exit /b
