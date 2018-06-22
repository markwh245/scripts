@echo off
rem *****************************
rem Script: Marks PostEnum Script
rem Creation Date: 01/02/2018
rem Author Mark WH
rem powershell script has all of these commands plus string searching for Passwords
rem *****************************
echo: > results.txt
echo ******************** "echo %username%" ******************** >> results.txt
echo: >> results.txt
echo %username% >> results.txt
echo:  >> results.txt
echo ******************** WhoAmI ******************** >> results.txt
echo: >> results.txt
whoami /all  >> results.txt
echo:  >> results.txt
echo ******************** HostName ******************** >> results.txt
echo: >> results.txt
hostname >> results.txt
echo:  >> results.txt
echo ******************** Ver ******************** >> results.txt
echo: >> results.txt
ver >> results.txt
echo: >> results.txt
echo ******************** Ipconfig /all ******************** >> results.txt
echo: >> results.txt
ipconfig /all >> results.txt
echo: >> results.txt
echo ******************** Systeminfo. Look at the Hotfixes, one might be missing and you can kernal exploit ******************** >> results.txt
echo: >> results.txt
systeminfo >> results.txt
echo: >> results.txt

echo: >> results.txt
echo ******************** Set ******************** >> results.txt
echo: >> results.txt
@echo off
set >> results.txt
echo: >> results.txt
echo: >> results.txt
echo ******************** wmic logicaldisk get caption, description,providername  ******************** >> results.txt
echo: >> results.txt
wmic logicaldisk get caption, description,providername >> results.txt
echo: >> results.txt
echo ******************** net use ******************** >> results.txt
echo: >> results.txt
@echo off
net use >> results.txt
echo: >> results.txt
echo ******************** net accounts ******************** >> results.txt
echo: >> results.txt
@echo off
net accounts >> results.txt
echo: >> results.txt
echo ******************** net share ******************** >> results.txt
echo: >> results.txt
@echo off
net share >> results.txt
echo: >> results.txt
echo ******************** net localgroup administrators ******************** >> results.txt
echo: >> results.txt
@echo off
net localgroup administrators >> results.txt
echo: >> results.txt
echo ******************** net users ******************** >> results.txt
echo: >> results.txt
@echo off
net users >> results.txt
echo: >> results.txt
echo ******************** dir /b /ad "C:\Users\" - User Profiles ******************** >> results.txt
echo: >> results.txt
@echo off
dir /b /ad "C:\Users\" >> results.txt
echo:  >> results.txt
echo ******************** "schtasks.exe | FINDSTR Ready"  ******************** >> results.txt
echo: >> results.txt
schtasks.exe | FINDSTR Ready >> results.txt
echo: >> results.txt
echo ******************** "schtasks.exe | FINDSTR Running"  ******************** >> results.txt
echo: >> results.txt
schtasks.exe | FINDSTR Running >> results.txt
echo: >> results.txt
echo ******************** "reg query "HKLM\SOFTWARE\Microsoft\Windows NT\Currentversion\Winlogon" 2>nul | findstr "DefaultUserName DefaultDomainName DefaultPassword"" ******************** >> results.txt
echo ******************** - Anything in the Registry for User Autologon? ******************** >> results.txt
echo: >> results.txt
@echo off
reg query "HKLM\SOFTWARE\Microsoft\Windows NT\Currentversion\Winlogon" 2>nul | findstr "DefaultUserName DefaultDomainName DefaultPassword" >> results.txt
echo: >> results.txt
@echo off
reg query "reg query HKLM /s | findstr /i password 2>nul Looking for Password in the LM Registry Key Scan 1" >> results.txt
echo: >> results.txt
reg query HKLM /s | findstr /i password 2>nul >> results.txt
echo: >> results.txt
reg query "reg query HKLM /s | findstr /i password 2>nul Looking for Password in the LM Registry Key Scan 2" >> results.txt
echo: >> results.txt
reg query HKLM /f password /t REG_SZ /s >> results.txt
echo: >> results.txt
reg query "reg query HKCU /s | findstr /i password 2>nul Looking for Password in the CU Registry Key Scan 1" >> results.txt
echo: >> results.txt
reg query HKCU /s | findstr /i password 2>nul >> results.txt
echo: >> results.txt
reg query "reg query HKCU /s | findstr /i password 2>nul Looking for Password in the CU Registry Key Scan 2" >> results.txt
echo: >> results.txt
reg query HKCU /f password /t REG_SZ /s >> results.txt
echo: >> results.txt

reg query "dir c:\ /b /s | findstr /i "unattend" Looking for creds in unattended.xml style files" >> results.txt
echo: >> results.txt
dir c:\ /b /s | findstr /i "unattend" >> results.txt
echo: >> results.txt

reg query "dir c:\ /b /s | findstr /i "sysprep" Looking for creds in sysprep style files" >> results.txt
echo: >> results.txt
dir c:\ /b /s | findstr /i "sysprep" >> results.txt
echo: >> results.txt




echo ******************** cmdkey /list - Anything in Credential Manager? ******************** >> results.txt
echo: >> results.txt
cmdkey /list >> results.txt
echo: >> results.txt
echo ******************** Looking for Unqouted service paths ******************** >> results.txt
echo ******************** For Example: `C:\Program Files\whatever software\whatever.exe` will execute `C:\Program Files\whatever.exe` ******************** >> results.txt
echo: >> results.txt
echo ******************** dir /a "C:\Program Files" ******************** >> results.txt
echo: >> results.txt
@echo off
dir /a "C:\Program Files" >> results.txt
echo: >> results.txt
echo ******************** ICACLS Stuff ******************** >> results.txt
echo: >> results.txt
echo ******************** Full Permissions for Everyone or Users on Program Folders? ******************** >> results.txt
echo: >> results.txt
echo ******************** "icacls "C:\Program Files\*" 2>nul | findstr "(F)" | findstr "Everyone"" ******************** >> results.txt
echo: >> results.txt
@echo off
icacls "C:\Program Files\*" 2>nul | findstr "(F)" | findstr "Everyone" >> results.txt
echo: >> results.txt
echo ******************** "icacls "C:\Program Files (x86)\*" 2>nul | findstr "(F)" | findstr "Everyone"" ******************** >> results.txt
echo: >> results.txt
@echo off
icacls "C:\Program Files (x86)\*" 2>nul | findstr "(F)" | findstr "Everyone" >> results.txt
echo: >> results.txt
echo ******************** "icacls "C:\Program Files\*" 2>nul | findstr "(F)" | findstr "BUILTIN\Users"" ******************** >> results.txt
echo: >> results.txt
@echo off
icacls "C:\Program Files\*" 2>nul | findstr "(F)" | findstr "BUILTIN\Users" >> results.txt
echo: >> results.txt
echo ******************** "icacls "C:\Program Files (x86)\*" 2>nul | findstr "(F)" | findstr "BUILTIN\Users"" ******************** >> results.txt
echo: >> results.txt
@echo off
icacls "C:\Program Files (x86)\*" 2>nul | findstr "(F)" | findstr "BUILTIN\Users"  >> results.txt
echo: >> results.txt
echo ******************** Modify Permissions for Everyone or Users on Program Folders? ******************** >> results.txt
echo: >> results.txt
echo ******************** "icacls "C:\Program Files\*" 2>nul | findstr "(M)" | findstr "Everyone"" ******************** >> results.txt
echo: >> results.txt
@echo off
icacls "C:\Program Files\*" 2>nul | findstr "(M)" | findstr "Everyone"  >> results.txt
echo: >> results.txt
echo ******************** "icacls "C:\Program Files (x86)\*" 2>nul | findstr "(M)" | findstr "Everyone"" ******************** >> results.txt
echo: >> results.txt
@echo off
icacls "C:\Program Files (x86)\*" 2>nul | findstr "(M)" | findstr "Everyone"  >> results.txt
echo: >> results.txt
echo ******************** "icacls "C:\Program Files\*" 2>nul | findstr "(M)" | findstr "BUILTIN\Users"" ******************** >> results.txt
echo: >> results.txt
@echo off
icacls "C:\Program Files\*" 2>nul | findstr "(M)" | findstr "BUILTIN\Users"   >> results.txt
echo: >> results.txt
echo ******************** "icacls "C:\Program Files (x86)\*" 2>nul | findstr "(M)" | findstr "BUILTIN\Users"" ******************** >> results.txt
echo: >> results.txt
@echo off
icacls "C:\Program Files (x86)\*" 2>nul | findstr "(M)" | findstr "BUILTIN\Users"   >> results.txt
echo: >> results.txt
echo ******************** net start - What Services are started? ******************** >> results.txt
echo: >> results.txt
@echo off
net start   >> results.txt
echo: >> results.txt
echo ******************** tasklist /svc - What's Running ******************** >> results.txt
echo: >> results.txt
@echo off
tasklist /svc   >> results.txt
echo: >> results.txt
echo ******************** Scheduled Tasks ******************** >> results.txt
echo: >> results.txt
echo ******************** "schtasks /query /fo LIST 2>nul | findstr TaskName" ******************** >> results.txt
echo: >> results.txt
schtasks /query /fo LIST 2>nul | findstr TaskName  >> results.txt
echo: >> results.txt
echo ******************** dir C:\windows\tasks ******************** >> results.txt
echo: >> results.txt
@echo off
dir C:\windows\tasks >> results.txt
echo: >> results.txt
echo ******************** Start Up Tasks ******************** >> results.txt
echo: >> results.txt
echo ******************** wmic startup get caption,command ******************** >> results.txt
echo: >> results.txt
@echo off
wmic startup get caption,command >> results.txt
echo: >> results.txt
echo ******************** reg query HKLM\Software\Microsoft\Windows\CurrentVersion\Run ******************** >> results.txt
echo: >> results.txt
@echo off
reg query HKLM\Software\Microsoft\Windows\CurrentVersion\Run >> results.txt
echo: >> results.txt
echo ******************** reg query HKLM\Software\Microsoft\Windows\CurrentVersion\Run ******************** >> results.txt
echo: >> results.txt
@echo off
reg query HKCU\Software\Microsoft\Windows\CurrentVersion\Run >> results.txt
echo: >> results.txt
echo ******************** Basic Firewall Setup ******************** >> results.txt
echo: >> results.txt
echo ******************** netsh firewall show state ******************** >> results.txt
@echo off
netsh firewall show state >> results.txt
echo: >> results.txt
echo ******************** netsh firewall show config ******************** >> results.txt
@echo off
netsh firewall show config >> results.txt
echo: >> results.txt
echo ******************** netsh advfirewall show currentprofile ******************** >> results.txt
@echo off
netsh advfirewall show currentprofile >> results.txt
echo: >> results.txt
echo ******************** look for the string password in .xml, .ini, .txt and .config files from the current dir ******************** >> results.txt
@echo off
findstr /si password *.xml *.ini *.txt *.config >> results.txt
echo: >> results.txt

echo ******************** look for the string pass in .xml, .ini, .txt and .config files from the current dir ******************** >> results.txt
@echo off
findstr /si pass *.xml *.ini *.txt *.config >> results.txt
echo: >> results.txt

echo ******************** Wmic to look for Unqouted service paths. explanation of use on your website, link to examples website on your website ******************** >> results.txt
@echo off
wmic service get name,displayname,pathname,startmode | findstr /i "Auto" | findstr /i /v "C:\Windows\\" | findstr /i /v """ >> result.txt
echo: >> results.txt
echo ******************** Icacls to look at perms on C:\Program Files\ Assuming a 32 Bit Arch ******************** >> results.txt
@echo off
icacls "C:\Program Files" >> results.txt
echo: >> results.txt
echo ******************** Icacls to look at perms on C:\Program Files (x86)\ Assuming a 64 Bit Arch ******************** >> results.txt
@echo off
icacls "C:\Program Files (x86)" >> results.txt
echo: >> results.txt 
echo ******************** Looking in the HKCU Registry to see if Always Install Elevated is set, if it is, do a msi trojan. Both need to be enabled. Get an Error: system can't find key or value means it's not gonna work ******************** >> results.txt
@echo off
reg query HKCU\SOFTWARE\Policies\Microsoft\Windows\Installer /v AlwaysInstallElevated >> results.txt
echo: >> results.txt 
echo ******************** Looking in the HKLM Registry to see if Always Install Elevated is set, if it is, do a msi trojan. Both need to be enabled. Get an Error: system can't find key or value means it's not gonna work ******************** >> results.txt
@echo off
reg query HKLM\SOFTWARE\Policies\Microsoft\Windows\Installer /v AlwaysInstallElevated >> results.txt
echo: >> results.txt 







