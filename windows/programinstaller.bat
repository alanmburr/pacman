@echo off

rem    Copyright (C) 2020-2022 Alan Burr <alanburr25@gmail.com>
    
rem    This program is free software: you can redistribute it and/or modify
rem    it under the terms of the GNU General Public License as published by
rem    the Free Software Foundation, either version 3 of the License, or
rem    (at your option) any later version.

rem    This program is distributed in the hope that it will be useful,
rem    but WITHOUT ANY WARRANTY; without even the implied warranty of
rem    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
rem    GNU General Public License for more details.

rem    You should have received a copy of the GNU General Public License
rem    along with this program.  If not, see <https://www.gnu.org/licenses/>.


:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------   
powershell 
$Output = $wshelll.Popup("The installer will now begin installing programs. Please stay at your computer in case there is a popup.",0,"Software Installation",0+64)
rem $Output = $wshell.Popup("Installing Google Chrome Stable for Windows",5,"Software Install",0+64)
mkdir c:\"program files"\Winstall64
cd ..
rmdir macos
rmdir ubuntu
rem xcopy programinstaller.bat c:\"program files"\Winstall64\programinsteller.bat
rem $Output = $wshell.Popup("Installing Lego Mindstorms",0,"Software Installation",0+64)
cd c:\"program files"\Winstall64
cmd
curl https://le-www-live-s.legocdn.com/downloads/LME-EV3/LME-EV3_Full-setup_1.4.5_en-US_WIN32.exe > LME-EV3_Full-setup_1.4.5_en-US_WIN32.exe
start LME-EV3_Full-setup_1.4.5_en-US_WIN32.exe
powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
cmd
@echo off
SET DIR=%~dp0%
%systemroot%\System32\WindowsPowerShell\v1.0\powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "((new-object net.webclient).DownloadFile('https://chocolatey.org/install.ps1','%DIR%install.ps1'))"
%systemroot%\System32\WindowsPowerShell\v1.0\powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%DIR%install.ps1' %*"
powershell
rem $Output = $wshell.Popup("Installing other software",0,"Software Installation",0+64)
choco install irfanview -y
choco install firefox -y
choco install 7zip.install -y
choco install vlc -y
choco install python -y
choco install libreoffice-still -y
choco install adobereader -y
choco install vscode -y
choco install googlechrome -y
rem $Output = $wshell.Popup("Install Finished. Your computer will restart soon. If you are dual booting, be sure to boot into Windows.",0,"Software Installation",0+48)
exit
