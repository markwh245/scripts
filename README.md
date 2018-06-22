# Scripts

Various Post Enum and Info Gathering Scripts

***************************

googlescript.sh

A automated script that uses various GooleDork/GoogleHack queries to enumerate a company and email address domain.

usage ./googlescript.sh www.domain name.com @email domain.com

Queries run every 25 seconds to stop Google having a hissy fit about traffic volume. But it's still quicker manual enumeration.

****************************

Nmapscans.sh

A basic automated Nmap scan script.

Will do the -A, -O, -sV -sS, -sU, "The big scan of TCP:0-65535" and Network File Shares Search.

It will create new Dir on the Desktop based on the target host IP/Domain name store each scan in there individually.

Scans run in parallel, there is no throttling, so it's not any good for outside of HackTheBox etc.

Usage
./Nmapscans.sh <target>
  
***************************

nmapsmbscan.sh

A script to test and enum for SMB information. Commands run sequentially, targetting TCP 139 and 445. 
Running the following
smb-os-discovery, smb-security-mode, smb-enum-shares, smb-brute.nse,smb-enum-shares, smb-enum-users, smb-enum-sessions, smb-enum-processes, smb-system-info.

Usage
./nmapsmbscan.sh

HitEnter

Enter Target IP address


***************************
 
nmapvulnlinscans.sh

Nmap script that tests for General and Linux based vulnerabilities.

Creates a new directory on the Desktop called VulnScan<Target IP Address> and stores in individual txt files

Checks for

General vulns
ftp-vuln-cve2010-4221		ProFTPDServer
http-vuln-cve2010-2861		ColdFusion
http-vuln-cve2014-8877		Worpress
http-vuln-cve2012-1823		PHPCodeExec

Specific Linux based vulns
http-vuln-cve2006-3392		Webmin
http-vuln-cve2013-7091		RubinaZimbra
mysql-vuln-cve2012-2122		MariaDB
samba-vuln-cve-2012-1182	Samba
smtp-vuln-cve2010-4344		SMTPExim
smtp-vuln-cve2011-1764		SMTPEximFormat


Usage
./nmapvulnlinscans.sh TargetIPAddress

***************************

Nmap script that tests for General and Windows based vulnerabilities.

Creates a new directory on the desktop call VulnScan-Target IP Address and stores the infomation in individual txt files.

Warning some tests could result in Blue Screen on the target.

Checks for

General vulns 

ftp-vuln-cve2010-4221 	ProFTPDServer 
http-vuln-cve2010-2861 	ColdFusion 
http-vuln-cve2014-8877 	Worpress 
http-vuln-cve2012-1823 	PHPCodeExec

Windows specific checks

http-iis-webdav-vuln	IISWebdav
http-vuln-cve2015-1635	MS15-034
rdp-vuln-ms12-020.nse	MS12-020
smb-vuln-ms06-025.nse	MS06-025p137and139
smb-vuln-ms06-025.nse	ms06-025p445
smb-vuln-ms07-029	ms07-029
smb-vuln-ms10-061	ms10-061
smb-vuln-conficker	cornficker
smb-vuln-ms08-067	ms08-067
smb-vuln-ms10-054	ms10-054
smb-vuln-regsvc-dos.nse	Win2000Regsvc


Usage ./nmapvulnwinscans.sh TargetIPAddress

*********************************

A Powershell V2 Post Enum script looking for Swag. It's Powershell 2 in order to be backwards compatible.

It creates a Results.txt file in the same dir.

Enumerates the host looking for data, registry, file contents, access privs, etc. Many boxes have been priv esc'd because of the findings in this script.

Usage
upload to target

from cmd prompt
powershell.exe -ExecutionPolicy Bypass -NoLogo -NonInteractive -NoProfile -File postenum.ps1

*********************************

