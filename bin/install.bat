:: Install Healthstone on the local system
@echo off
echo.
echo This will install Healthstone System Monitor to %SYSTEMROOT%\healthstone and add it as a service.
echo.
echo To configure it, edit the healthstone.ini file in that folder, then restart the service.
echo Make sure you have Microsoft .NET Framework 3.5 installed, and you are running this script as local Administrator before continuing.
echo.
pause
net stop Healthstone
timeout 1 > null
mkdir %SYSTEMROOT%\healthstone
copy healthstone.exe %SYSTEMROOT%\healthstone\healthstone.exe
copy healthstone.ini %SYSTEMROOT%\healthstone\healthstone.ini
copy README %SYSTEMROOT%\healthstone\README
%SYSTEMROOT%\System32\sc.exe create Healthstone binpath=%SYSTEMROOT%\healthstone\healthstone.exe type=own start=auto
%SYSTEMROOT%\System32\sc.exe description Healthstone "Healhstone System Monitor"
net start Healthstone
