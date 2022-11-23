@echo off

:: This block installs the latest windows update
Install-Module PSWindowsUpdate
Get-WindowsUpdate
Install-WindowsUpdate

:: restarts the computer
rem shutdown.exe /r /t 00