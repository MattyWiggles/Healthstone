:: UnInstall Healthstone from the local system
@echo off
echo.
echo This will uninstall Healthstone System Monitor from %PROGRAMFILES%\healthstone
echo Press ENTER to continue, CTRL-C to abort.
echo.
pause
net stop Healthstone
%SYSTEMROOT%\System32\sc.exe delete Healthstone
del "%PROGRAMFILES%\healthstone\healthstone.exe"
rd "%PROGRAMFILES%\healthstone"
echo Done.