#!/bin/bash

if [ "$1" == "" ]
then 
echo "Usage: ./nmapvulnlinscans.sh [target IP address]"
fi
if [ "$1" != "" ]
then
echo ""
echo "Starting Vuln Checks "
echo -en '\n'
mkdir  /root/Desktop/VulnScan"$1"
echo "General vuln scripts"
echo -en '\n'
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
echo "*nix Specific Checks "
echo -en '\n'
echo "nmap -sV --script http-vuln-cve2006-3392 "
echo ""
echo -en '\n'
nmap -Pn -sV --script http-vuln-cve2006-3392 $1 -oN /root/Desktop/VulnScan"$1"/Webmin.txt
echo ""
echo "nmap -sV --script http-vuln-cve2013-7091"
echo -en '\n'
nmap -Pn -sV --script http-vuln-cve2013-7091 $1 -oN /root/Desktop/VulnScan"$1"/RubinaZimbra.txt
echo ""
echo "nmap -sV --script mysql-vuln-cve2012-2122"
echo -en '\n'
nmap -Pn -sV --script mysql-vuln-cve2012-2122 $1 -oN /root/Desktop/VulnScan"$1"/MariaDB.txt
echo ""
echo "nmap --script=samba-vuln-cve-2012-1182 -p 139"
echo ""
echo -en '\n'
nmap -Pn --script=samba-vuln-cve-2012-1182 -p 139 $1 -oN /root/Desktop/VulnScan"$1"/Samba.txt
echo "nmap --script=smtp-vuln-cve2010-4344 --script-args="smtp-vuln-cve2010-4344.exploit" -pT:25,465,587"
echo -en '\n'
echo ""
nmap -Pn --script=smtp-vuln-cve2010-4344 --script-args="smtp-vuln-cve2010-4344.exploit" -pT:25,465,587 $1 -oN /root/Desktop/VulnScan"$1"/SMTPExim.txt
echo "nmap --script=smtp-vuln-cve2011-1764 -pT:25,465,587 "
echo -en '\n'
nmap -Pn --script=smtp-vuln-cve2011-1764 -pT:25,465,587 $1 -oN /root/Desktop/VulnScan"$1"/SMTPEximFormat.txt
fi
