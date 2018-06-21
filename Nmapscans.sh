#!/bin/bash

if [ "$1" == "" ]
then 
echo "Usage: ./Nmapscans.sh [target IP address]"
fi
if [ "$1" != "" ]
then
echo "Scanning"
mkdir  /root/Desktop/"$1"
echo "-A scan"
nmap -Pn -A "$1" -oN /root/Desktop/"$1"/A.txt &
echo "-O scan"
nmap -Pn -O "$1" -oN /root/Desktop/"$1"/O.txt &
echo "-sV scan"
nmap -Pn -sV "$1" -oN /root/Desktop/"$1"/sV.txt &
echo "-sS scan"
nmap -Pn -sS "$1" -oN /root/Desktop/"$1"/sS.txt &
echo "-sU scan"
nmap -Pn -sU "$1" -oN /root/Desktop/"$1"/sU.txt --top-ports 500 &
echo "-BigScan"
nmap -Pn -n -sT -sV -O -vv "$1" -p0-65535 -oN /root/Desktop/"$1"/BigScan.txt &
echo "-sA scan"
nmap -Pn -sA -oN /root/Desktop/"$1"/sA.txt &
echo "nfs-le.nse"
nmap -Pn --script=nfs-ls.nse "$1" oN /root/Desktop/"$1"/NFS.txt
fi


