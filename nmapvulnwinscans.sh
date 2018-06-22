#!/bin/bash

if [ "$1" == "" ]
then 
echo "Usage: ./nmapvulnwinscans.sh [target IP address]"
fi
if [ "$1" != "" ]
then
echo "Starting Vuln Checks "
echo -en '\n'
mkdir  /root/Desktop/VulnScan"$1"
echo "General vuln scripts"
echo -en '\n'
echo ""
echo "nmap --script ftp-vuln-cve2010-4221 -p 21"
echo -en '\n'
nmap -Pn --script ftp-vuln-cve2010-4221 -p 21 $1 -oN /root/Desktop/VulnScan"$1"/ProFTPDServer.txt
echo ""
echo "nmap --script http-vuln-cve2010-2861"
echo -en '\n'
nmap -Pn --script http-vuln-cve2010-2861 $1 -oN /root/Desktop/VulnScan"$1"/ColdFusion.txt
echo ""
echo "nmap --script http-vuln-cve2014-8877"
echo -en '\n'
nmap -Pn --script http-vuln-cve2014-8877 $1 -oN /root/Desktop/VulnScan"$1"/Worpress.txt
echo ""
echo "nmap -sV --script http-vuln-cve2012-1823.nse"
echo -en '\n'
nmap -Pn -sV --script http-vuln-cve2012-1823.nse $1 -oN /root/Desktop/VulnScan"$1"/PHPCodeExec.txt
echo ""
echo "Windows Specific Checks "
echo -en '\n'
echo ""
echo "nmap --script http-iis-webdav-vuln -p80,8080 "
echo -en '\n'
nmap -Pn --script http-iis-webdav-vuln -p80,8080 $1 -oN /root/Desktop/VulnScan"$1"/IISWebdav.txt
echo ""
echo "nmap -p80 --script http-vuln-cve2015-1635.nse"
echo -en '\n'
nmap -Pn -p80 --script http-vuln-cve2015-1635.nse $1 -oN /root/Desktop/VulnScan"$1"/MS15-034.txt
echo ""
echo "nmap -sV --script rdp-vuln-ms12-020.nse -p 3389"
echo -en '\n'
nmap -Pn -sV --script rdp-vuln-ms12-020.nse -p 3389 $1 -oN /root/Desktop/VulnScan"$1"/MS12-020.txt
echo ""
echo "nmap -sU --script smb-vuln-ms06-025.nse -p U:137,T:139"
echo -en '\n'
nmap -Pn -sU --script smb-vuln-ms06-025.nse -p U:137,T:139 $1 -oN /root/Desktop/VulnScan"$1"/MS06-025p137and139.txt
echo ""
echo "nmap --script smb-vuln-ms06-025.nse -p445"
echo -en '\n'
nmap -Pn --script smb-vuln-ms06-025.nse -p139,445 $1 -oN /root/Desktop/VulnScan"$1"/ms06-025p445.txt
echo ""
echo "nmap --script smb-vuln-ms07-029.nse -p139,445"
echo -en '\n'
nmap -Pn --script smb-vuln-ms07-029.nse -p139,445 $1 -oN /root/Desktop/VulnScan"$1"/ms07-029.txt
echo ""
echo "nmap  -p 445 $1 --script=smb-vuln-ms10-061"
echo -en '\n'
nmap  -Pn -p 139,445 $1 --script=smb-vuln-ms10-061 -oN /root/Desktop/VulnScan"$1"/ms10-061.txt
echo ""
echo "nmap -sV --script smb-vuln-conficker.nse -p139,445"
echo -en '\n'
nmap -Pn -sV --script smb-vuln-conficker.nse -p139,445 $1 -oN /root/Desktop/VulnScan"$1"/cornficker.txt
echo ""
echo "nmap --script smb-vuln-ms08-067.nse -p445"
echo -en '\n'
nmap -Pn --script smb-vuln-ms08-067.nse -p445 $1 -oN /root/Desktop/VulnScan"$1"/ms08-067.txt
echo ""
echo "nmap  -p 139, 445 $1 --script=smb-vuln-ms10-054 --script-args unsafe"
echo -en '\n'
nmap  -Pn -p139,445 $1 --script=smb-vuln-ms10-054 --script-args unsafe -oN /root/Desktop/VulnScan"$1"/ms10-054.txt
echo ""
echo "nmap --script smb-vuln-regsvc-dos.nse -p445"
echo -en '\n'
nmap -Pn --script smb-vuln-regsvc-dos.nse -p445 $1 -oN /root/Desktop/VulnScan"$1"/Win2000Regsvc.txt
fi
