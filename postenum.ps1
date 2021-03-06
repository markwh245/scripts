﻿if($exists = Test-Path -Path "./results.txt"){
write-host "results.txt already exists, Deleting"
Remove-Item "results.txt"
New-Item "./results.txt" -type file
}
write-Host ""
write-Host ""
write-Host "Running Script, Be cool Mark"
Set-Content ./results.txt "`r`n`r`n" 
Set-Content ./results.txt "`r`n`r`n" 
add-content ./results.txt  "*****************************" 
add-content ./results.txt "Script: Marks PostEnum Script" 
add-content ./results.txt "Creation Date: 01/02/2018"
add-content ./results.txt "Author Mark WH"
add-content ./results.txt  "*****************************"
add-Content ./results.txt "`r`n`r`n" 
add-content ./results.txt  "Who Am I Logged on as? $env:USERNAME "
$username = $env:USERNAME
add-Content ./results.txt "`r`n" 
add-content .\results.txt "`t$username"
add-Content ./results.txt "`r`n" 

add-content ./results.txt  "Who Am I? whoami"
add-Content ./results.txt "`r`n" 
$whoami = whoami
add-content .\results.txt "`t$whoami"
add-Content ./results.txt "`r`n" 

add-content ./results.txt  "HostName"
add-Content ./results.txt "`r`n" 
$hostname = hostname
add-content .\results.txt "`t$hostname"
add-Content ./results.txt "`r`n" 

add-content ./results.txt  "Powershell Version $PSVersionTable.PSVersion"
add-Content ./results.txt "`r`n" 
$PSVersion = $PSVersionTable.PSVersion
add-content .\results.txt "`t$PSVersion"
add-Content ./results.txt "`r`n" 


add-content ./results.txt  "What Operating System? (gwmi win32_operatingsystem).caption"
add-Content ./results.txt "`r`n" 
$os = (gwmi win32_operatingsystem).caption
add-content .\results.txt "`t$os"
add-Content ./results.txt "`r`n" 

add-content ./results.txt  "IP Addresses? ipconfig /all"
add-Content ./results.txt "`r`n" 
$ip = Ipconfig /all
Add-Content -Value $ip -Path .\results.txt -Encoding ASCII -Force
add-Content ./results.txt "`r`n"

add-content ./results.txt  "SystemInfo"
add-Content ./results.txt "`r`n" 
$sys = systeminfo
Add-Content -Value $sys -Path .\results.txt -Encoding ASCII -Force
add-Content ./results.txt "`r`n"


add-content ./results.txt  "WMIC QFE"
add-Content ./results.txt "`r`n" 
$wmic = WMIC QFE
Add-Content -Value $wmic -Path .\results.txt -Encoding ASCII -Force
add-Content ./results.txt "`r`n"

$location = pwd
add-content ./results.txt  "`tWhat are the Environment Variables? get-childitem Env:"
add-Content ./results.txt "`r`n" 
Get-ChildItem Env: | Out-File ./results.txt -Encoding ASCII -Force -Append 
add-Content ./results.txt "`r`n" 

add-content ./results.txt  "`tWhat drives are there? Get-PSProvider Filesystem"
add-Content ./results.txt "`r`n" 
Get-PSProvider Filesystem | Out-File ./results.txt -Encoding ASCII -Force -Append 
add-Content ./results.txt "`r`n"

add-content ./results.txt  "`tAny mapped drives? net use"
add-Content ./results.txt "`r`n" 
$mapped = net use
add-content .\results.txt "`t$mapped"
add-Content ./results.txt "`r`n"

add-content ./results.txt  "`tAny shared drives on the system net share"
add-Content ./results.txt "`r`n" 
$share = net share
add-content -Value $share -Path .\results.txt -Encoding ASCII -Force
add-Content ./results.txt "`r`n"

add-content ./results.txt  "`tUser account rules/password critieria etc net accounts"
add-Content ./results.txt "`r`n" 
$accounts = net accounts
add-content -Value $accounts -Path .\results.txt -Encoding ASCII -Force
add-Content ./results.txt "`r`n"

add-content ./results.txt  "`tWhat users exist on the system? net users"
add-Content ./results.txt "`r`n" 
$users = net users
add-content -Value $users -Path .\results.txt -Encoding ASCII -Force
add-Content ./results.txt "`r`n"


add-content ./results.txt  "`tEnumerate localgroup Administrators"
add-Content ./results.txt "`r`n" 
$admins = net localgroup Administrators
add-content -Value $accounts -Path .\results.txt -Encoding ASCII -Force
add-Content ./results.txt "`r`n"

add-content ./results.txt  "`tEnumerate localgroup Remote Desktop Users"
add-Content ./results.txt "`r`n" 
$remote = net localgroup "Remote Desktop Users"
add-content -Value $remote -Path .\results.txt -Encoding ASCII -Force
add-Content ./results.txt "`r`n"

add-content ./results.txt  "`tEnumerate localgroup Power Users"
add-Content ./results.txt "`r`n" 
$power = net localgroup "Power Users"
add-content -Value $power -Path .\results.txt -Encoding ASCII -Force
add-Content ./results.txt "`r`n"

add-content ./results.txt  "`twhat users profiles directories exist? Get-Child-item C:\users -force "
add-Content ./results.txt "`r`n" 
$profiles = Get-Childitem C:\users -force
add-content -Value $profiles -Path .\results.txt -Encoding ASCII -Force
add-Content ./results.txt "`r`n"

add-content ./results.txt  "`tWhat Scheduled Tasks are set up to run? schtasks.exe | FINDSTR Ready"
add-Content ./results.txt "`r`n" 
$scheduled = schtasks.exe | FINDSTR Ready
add-content -Value $scheduled -Path .\results.txt -Encoding ASCII -Force
add-Content ./results.txt "`r`n"

add-content ./results.txt  "`tWhat Scheduled Tasks are in the C:\Windows\Tasks folder? Also look at root of C:\ for scheduled tasks"
add-Content ./results.txt "`r`n" 
$tasksfolder = Get-ChildItem C:\Windows\tasks
add-content -Value $tasksfolder -Path .\results.txt -Encoding ASCII -Force
add-Content ./results.txt "`r`n"



add-content ./results.txt  "`tWhat Scheduled Tasks are Actually running right now? schtasks.exe | FINDSTR Running"
add-Content ./results.txt "`r`n" 
$running = schtasks.exe | FINDSTR Running
add-content -Value $running -Path .\results.txt -Encoding ASCII -Force
add-Content ./results.txt "`r`n"

add-content ./results.txt  "`tCheck the Registry for AutoLogon info, usernames and password etc Get-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WinLogon' | select Default*"
add-Content ./results.txt "`r`n" 
Get-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WinLogon' | select "Default*" | Out-File ./results.txt -Encoding ASCII -Force -Append
add-Content ./results.txt "`r`n"

add-content ./results.txt  "`tAnything interesting in Credential Manager? cmdkey /list"
add-Content ./results.txt "`r`n" 
$credman = cmdkey /list
add-content -Value $credman -Path .\results.txt -Encoding ASCII -Force
add-Content ./results.txt "`r`n"

add-content ./results.txt  "`tLooking for unqouted service paths Step 1"
add-Content ./results.txt "`r`n" 
add-content ./results.txt  "`tFor Example: C:\Program Files\whatever software\whatever.exe will execute C:\Program Files\whatever.exe"
add-Content ./results.txt "`r`n" 
add-content ./results.txt  "`tCmd runnning is Get-ChildItem C:\Program Files, C:\Program Files (x86) | ft Parent,Name,LastWriteTime"
add-Content ./results.txt "`r`n" 
Get-ChildItem 'C:\Program Files', 'C:\Program Files (x86)' | ft Parent,Name,LastWriteTime | Out-File ./results.txt -Encoding ASCII -Force -Append
add-Content ./results.txt "`r`n"


add-content ./results.txt  "`tLooking for unqouted service paths Step 2"
add-Content ./results.txt "`r`n" 
add-content ./results.txt  "Cmd runnning is -class Win32_Service -Property Name, DisplayName, PathName, StartMode | Where {$_.StartMode -eq `"Auto`" -and $_.PathName -notlike `"C:\Windows*`" -and $_.PathName -notlike '`"*'} | select PathName,DisplayName,Name" 
add-Content ./results.txt "`r`n" 
Get-WmiObject -class Win32_Service -Property Name, DisplayName, PathName, StartMode | Where {$_.StartMode -eq "Auto" -and $_.PathName -notlike "C:\Windows*" -and $_.PathName -notlike '"*'} | select PathName,DisplayName,Name | Out-File ./results.txt -Encoding ASCII -Force -Append
add-Content ./results.txt "`r`n"

add-content ./results.txt  "`tBasically doing the same, looking for unqouted service paths, but checking the Registry"
add-Content ./results.txt "`r`n" 
add-content ./results.txt  "`tCmd runnning is Get-ChildItem -path Registry::HKEY_LOCAL_MACHINE\SOFTWARE | ft Name"
add-Content ./results.txt "`r`n" 
Get-ChildItem -path Registry::HKEY_LOCAL_MACHINE\SOFTWARE | ft Name | Out-File ./results.txt -Encoding ASCII -Force -Append
add-Content ./results.txt "`r`n"

add-Content ./results.txt "`r`n"
add-Content ./results.txt "`r`n"
add-Content ./results.txt "`r`n"
add-Content ./results.txt "`tDon't Forget you can upload Accesschk.exe and look for Weak Perms if you have doubts about the results"
add-Content ./results.txt '"accesschk.exe -qwsu "Everyone" * accesschk.exe -qwsu "Authenticated Users" * accesschk.exe -qwsu "Users" *"'
add-Content ./results.txt "`r`n"
add-Content ./results.txt "`r`n"
add-Content ./results.txt "`r`n"

add-content ./results.txt  "`tLooking for weak folder permissions. Step One the Everyone Option"
add-Content ./results.txt "`r`n" 
add-content ./results.txt  "`tCmd runnning is Get-ChildItem 'C:\Program Files\*','C:\Program Files\*' | % { try { Get-Acl $_ -EA SilentlyContinue | Where {($_.Access|select -ExpandProperty IdentityReference) -match 'Everyone'} } catch {}} Looking at the Everyone Option"
add-Content ./results.txt "`r`n" 
add-content ./results.txt  '"If in doubt of results run the Cmd line icacls "C:\Program Files (x86)\*" 2>null | findstr "(F)" | findstr "Everyone""'
add-Content ./results.txt "`r`n" 
Get-ChildItem 'C:\Program Files\*','C:\Program Files\*' | % { try { Get-Acl $_ -EA SilentlyContinue | Where {($_.Access|select -ExpandProperty IdentityReference) -match 'Everyone'} } catch {}}  | Out-File ./results.txt -Encoding ASCII -Force -Append
add-Content ./results.txt "`r`n"

add-content ./results.txt  "`tLooking for weak folder permissions. Step Two If NOT part of a Domain, the Users group option"
add-Content ./results.txt "`r`n" 
add-content ./results.txt  "`tCmd runnning is Get-ChildItem 'C:\Program Files\*','C:\Program Files (x86)\*' | % { try { Get-Acl $_ -EA SilentlyContinue | Where {($_.Access|select -ExpandProperty IdentityReference) -match 'Users'} } catch {}}  Looking at the Users Option"
add-Content ./results.txt "`r`n" 
add-content ./results.txt  '"If in doubt of results run the Cmd line icacls "C:\Program Files\*" 2>null | findstr "(F)" | findstr "BUILTIN\Users""'
add-Content ./results.txt "`r`n" 
Get-ChildItem 'C:\Program Files\*','C:\Program Files (x86)\*' | % { try { Get-Acl $_ -EA SilentlyContinue | Where {($_.Access|select -ExpandProperty IdentityReference) -match 'Users'} } catch {}}   | Out-File ./results.txt -Encoding ASCII -Force -Append
add-Content ./results.txt "`r`n"

add-content ./results.txt  "`tLooking for weak folder permissions. Step Three if part of a Domain, Users group"
add-Content ./results.txt "`r`n" 
add-content ./results.txt  "`tCmd runnning is Get-ChildItem 'C:\Program Files\*','C:\Program Files (x86)\*' | % { try { Get-Acl $_ -EA SilentlyContinue | Where {($_.Access|select -ExpandProperty IdentityReference) -match 'BUILTIN\Users'} } catch {}}  Looking at the Users Option"
add-Content ./results.txt "`r`n" 
add-content ./results.txt  '"If in doubt of results run the Cmd line icacls "C:\Program Files\*" 2>null | findstr "(F)" | findstr "BUILTIN\Users""'
add-Content ./results.txt "`r`n" 
Get-ChildItem 'C:\Program Files\*','C:\Program Files (x86)\*' | % { try { Get-Acl $_ -EA SilentlyContinue | Where {($_.Access|select -ExpandProperty IdentityReference) -match 'BUILTIN\Users'} } catch {}}   | Out-File ./results.txt -Encoding ASCII -Force -Append
add-Content ./results.txt "`r`n"

add-content ./results.txt  "`tWhat Services are started? net start"
add-Content ./results.txt "`r`n" 
$ns = net start
add-content -Value $ns -Path .\results.txt -Encoding ASCII -Force
add-Content ./results.txt "`r`n"

add-content ./results.txt  "`tWhat Running now? tasklist /svc"
add-Content ./results.txt "`r`n" 
$svc = tasklist /svc
add-content -Value $svc -Path .\results.txt -Encoding ASCII -Force
add-Content ./results.txt "`r`n"

add-Content ./results.txt "`r`n" 
add-Content ./results.txt "`r`n" 
add-content ./results.txt  "`tNext 6 commands are about what is about what Runs at Startup. First four look at the registry. Last two check system folders"
add-Content ./results.txt "`r`n" 
add-Content ./results.txt "`r`n" 
add-Content ./results.txt "Looking in Registry Step One`r`n" 
Get-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run'  | Out-File ./results.txt -Encoding ASCII -Force -Append
add-Content ./results.txt "`r`n" 

add-Content ./results.txt "`r`n" 
add-Content ./results.txt "`tLooking in Registry Step Two`r`n" 
Get-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunOnce'  | Out-File ./results.txt -Encoding ASCII -Force -Append
add-Content ./results.txt "`r`n" 

add-Content ./results.txt "`r`n" 
add-Content ./results.txt "`tLooking in Registry Step Three`r`n" 
Get-ItemProperty -Path 'Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run' | Out-File ./results.txt -Encoding ASCII -Force -Append
add-Content ./results.txt "`r`n" 

add-Content ./results.txt "`r`n" 
add-Content ./results.txt "`tLooking in Registry Step Four`r`n" 
Get-ItemProperty -Path 'Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\RunOnce' | Out-File ./results.txt -Encoding ASCII -Force -Append
add-Content ./results.txt "`r`n" 

add-Content ./results.txt "`r`n" 
add-Content ./results.txt "Looking in at All Users start up folder Step Five`r`n" 
$allusersstartup = Get-ChildItem "C:\Users\All Users\Start Menu\Programs\Startup"
add-content -Value $allusersstartup -Path .\results.txt -Encoding ASCII -Force
add-Content ./results.txt "`r`n" 

add-Content ./results.txt "`r`n" 
add-Content ./results.txt "`tLooking in at Logged on users start up folder Step Six`r`n" 
$loggedonusersstartup = Get-ChildItem "C:\Users\$env:USERNAME\Start Menu\Programs\Startup"
add-content -Value $loggedonusersstartup -Path .\results.txt -Encoding ASCII -Force
add-Content ./results.txt "`r`n"


add-Content ./results.txt "`r`n"
add-Content ./results.txt "`tBasic Firewall Setup and Config - Might not give you must cos I doubt you are in Local Admins`r`n" 
netsh advfirewall show allprofiles  | Out-File ./results.txt -Encoding ASCII -Force -Append
add-Content ./results.txt "`r`n"


add-Content ./results.txt "`r`n"
add-Content ./results.txt "`tFirewall show state`r`n" 
$fwstate = netsh firewall show state
add-content -Value $fwstate -Path .\results.txt -Encoding ASCII -Force
add-Content ./results.txt "`r`n"

add-Content ./results.txt "`r`n"
add-Content ./results.txt "`tFirewall current profile being used`r`n" 
$fwprofile = netsh advfirewall show currentprofile
add-content -Value $fwprofile -Path .\results.txt -Encoding ASCII -Force
add-Content ./results.txt "`r`n"

add-Content ./results.txt "`r`n"
add-Content ./results.txt "`r`n"
add-Content ./results.txt "`r`n"
add-Content ./results.txt "PASSWORD & STRING SEARCHING`r`n"
add-Content ./results.txt "`r`n"
add-Content ./results.txt "`r`n"

add-Content ./results.txt "`r`n"
add-Content ./results.txt "`tAny Passwords in HKCU? Scan 1`r`n" 
$hkcupw = reg query HKCU /f password /t REG_SZ /s
add-content -Value $hkcupw -Path .\results.txt -Encoding ASCII -Force
add-Content ./results.txt "`r`n"

add-Content ./results.txt "`r`n"
add-Content ./results.txt "`tAny Passwords in HKCU? Scan 2`r`n" 
$regpword2 = reg query HKCU /s | findstr /i password
add-content -Value $regpword2 -Path .\results.txt -Encoding ASCII -Force
add-Content ./results.txt "`r`n"

add-Content ./results.txt "`r`n"
add-Content ./results.txt "`tAny Passwords in HKLM? Scan 1`r`n" 
$hklmpw = reg query HKLM /f password /t REG_SZ /s
add-content -Value $hklmpw -Path .\results.txt -Encoding ASCII -Force
add-Content ./results.txt "`r`n"
add-Content ./results.txt "`r`n"
add-Content ./results.txt "`tAny Passwords in HKLM? Scan 2`r`n" 
$regpword = reg query HKLM /s | findstr /i password 
add-content -Value $regpword -Path .\results.txt -Encoding ASCII -Force

$excludeme = @("results.txt");
#$excludefolder = ("C:\Windows\*");


add-Content ./results.txt "`r`n"
add-Content ./results.txt "`tSearching for Sysprep or Unnattend files within the USERS DIR Quite SLOW`r`n" 
Get-Childitem –Path C:\users\$env:USERNAME\* -Include *unattend*,*sysprep* -Exclude $excludeme -Recurse -ErrorAction SilentlyContinue | where {($_.Name -like "*.xml" -or $_.Name -like "*.txt" -or $_.Name -like "*.ini")} | Out-File ./results.txt -Encoding ASCII -Force -Append
add-Content ./results.txt "`r`n"

add-Content ./results.txt "`r`n"
add-Content ./results.txt "`tSearching for Sysprep or Unnattend files from the C:\ Quite SLOW`r`n" 
Get-Childitem –Path C:\* -Include *unattend*,*sysprep* -Exclude $excludeme -Recurse -ErrorAction SilentlyContinue | where {($_.Name -like "*.xml" -or $_.Name -like "*.txt" -or $_.Name -like "*.ini")} | Out-File ./results.txt -Encoding ASCII -Force -Append
add-Content ./results.txt "`r`n"



add-Content ./results.txt "`r`n"
add-Content ./results.txt "`tInteresting files in the USERS DIR? Filenames contain Password, vnc or config Quite SLOW`r`n" 
Get-ChildItem C:\users\$env:USERNAME\* -include *.xml,*.ini,*.txt,*.config -Exclude $excludeme -Recurse -ErrorAction SilentlyContinue | Select-String -Pattern "password" | Out-File ./results.txt -Encoding ASCII -Force -Append
add-Content ./results.txt "`r`n"


add-Content ./results.txt "`r`n"
add-Content ./results.txt "`tSearching for Sysprep or unnattend files within the C:\ Quite SLOW`r`n" 
Get-Childitem –Path C:\* -Include *unattend*,*sysprep* -Exclude $excludeme -Recurse -ErrorAction SilentlyContinue | where {($_.Name -like "*.xml" -or $_.Name -like "*.txt" -or $_.Name -like "*.ini")}  | Out-File ./results.txt -Encoding ASCII -Force -Append
add-Content ./results.txt "`r`n"

#add-Content ./results.txt "`r`n"
#add-Content ./results.txt "`tInteresting files within the C:\? Filenames contain Password, vnc or config Quite SLOW`r`n" 
#Get-ChildItem C:\* -include *.xml,*.ini,*.txt,*.config -Exclude $excludeme -Recurse -ErrorAction SilentlyContinue | Select-String -Pattern "password" | Out-File ./results.txt -Encoding ASCII -Force -Append
#add-Content ./results.txt "`r`n"
add-Content ./results.txt "`r`n"
add-Content ./results.txt "`tInteresting files within the C:\? Filenames contain Password, vnc or config Quite SLOW`r`n" 
Get-ChildItem C:\* -include *.xml,*.ini,*.txt,*.config -Exclude $excludeme -Recurse | Where {$_.FullName -notlike "*\Windows\*"}  -ErrorAction SilentlyContinue | Select-String -Pattern "password" | Out-File ./results.txt -Encoding ASCII -Force -Append 
add-Content ./results.txt "`r`n"

add-Content ./results.txt "`r`n"
add-Content ./results.txt "`tInteresting files within the C:\? Filenames contain Pass, vnc or config Quite SLOW`r`n" 
Get-ChildItem C:\* -include *.xml,*.ini,*.txt,*.config -Exclude $excludeme -Recurse | Where {$_.FullName -notlike "*\Windows\*"}  -ErrorAction SilentlyContinue | Select-String -Pattern "pass" | Out-File ./results.txt -Encoding ASCII -Force -Append 
add-Content ./results.txt "`r`n"





add-Content ./results.txt "`tLooking for Unqouted Service Paths in C:\Windows`r`n" 
Get-WMIObject -Query "select * from win32_service where startmode='Auto'"|where{ $_.pathname -notlike '*`"*' -and $_.pathname -notlike "c:\windows\*" }|select name,displayname,pathname,startmode | format-table -wrap | Out-File ./results.txt -Encoding ASCII -Force -Append
add-Content ./results.txt "`r`n"
add-Content ./results.txt "`r`n"
add-Content ./results.txt "`tLooking for Unqouted Service Paths Everywhere`r`n" 
Get-WMIObject -Query "select * from win32_service where startmode='Auto'"|where{ $_.pathname -notlike '*`"*' }|select name,displayname,pathname,startmode | format-table -wrap | Out-File ./results.txt -Encoding ASCII -Force -Append
add-Content ./results.txt "`r`n"
add-Content ./results.txt "`r`n"
add-Content ./results.txt "`tLooking for Weak Folder Permissions in C:\Program Files (x86)`r`n" 
$progfiles86=Get-ChildItem -Recurse -path 'C:\Program Files (x86)' | ?{ $_.PSIsContainer } | Select-Object FullName | Where-Object {$_.FullName -NotMatch "Windows*" -And $_.FullName -NotMatch "Microsoft*" -And $_.FullName -NotMatch "Internet*"}
$c = @($progfiles86 | select -ExpandProperty FullName)
for ($i = 0; $i -lt $c.Count; $i++) {icacls $c[$i] | Out-File ./results.txt -Encoding ASCII -Force -Append } 
add-Content ./results.txt "`r`n"
add-Content ./results.txt "`r`n"
add-Content ./results.txt "`tLooking for Weak Folder Permissions in C:\Program Files`r`n" 
$progfiles64=Get-ChildItem -Recurse -path 'C:\Program Files' | ?{ $_.PSIsContainer } | Select-Object FullName | Where-Object {$_.FullName -NotMatch "Windows*" -And $_.FullName -NotMatch "Microsoft*" -And $_.FullName -NotMatch "Internet*"}
$d = @($progfiles64 | select -ExpandProperty FullName)
for ($i = 0; $i -lt $d.Count; $i++) {icacls $d[$i] | Out-File ./results.txt -Encoding ASCII -Force -Append }
add-Content ./results.txt "`r`n"
add-Content ./results.txt "`r`n"
add-Content ./results.txt "`tLooking in the HKCU Registry to see if Always Install Elevated is set, if it is, do a msi trojan. Both need to be enabled. Get an Error: system can't find key or value means it's not gonna work`r`n" 
$cu = reg query HKCU\SOFTWARE\Policies\Microsoft\Windows\Installer /v AlwaysInstallElevated
add-content ./results.txt "`tIf the next line is empty, it threw an Error and the key is not there`r`n" 
add-content -Value $cu -Path .\results.txt -Encoding ASCII -Force
add-Content ./results.txt "`r`n"
add-Content ./results.txt "`r`n"
add-Content ./results.txt "`tLooking in the HKLM Registry to see if Always Install Elevated is set, if it is, do a msi trojan. Both need to be enabled. Get an Error: system can't find key or value means it's not gonna work`r`n" 
$cu = reg query HKLM\SOFTWARE\Policies\Microsoft\Windows\Installer /v AlwaysInstallElevated
add-content ./results.txt "`tIf the next line is empty, it threw an Error and the key is not there`r`n" 
add-content -Value $cu -Path .\results.txt -Encoding ASCII -Force
add-Content ./results.txt "`r`n"
add-Content ./results.txt "`r`n"
add-Content ./results.txt "`tLooking for a List of installed Updates, might be missing one for a Kernal Exploit`r`n" 
Get-WmiObject -class win32_quickfixengineering | Out-File ./results.txt -Encoding ASCII -Force -Append
write-Host ""
write-Host ""
[console]::beep(500,300)
write-Host "Finished running, check out ya swag""
