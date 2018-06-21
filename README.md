# scripts
Various PostEnum and Info Gathering Scripts

****************************

A basic automated Nmap scan script.

Will do the -A, -O, -sV -sS, -sU, "The big scan of TCP:0-65535" and Network File Shares Search.

It will create new Dir on the Desktop based on the target host IP/Domain name store each scan in there individually.

Scans run in parallel, there is no throttling, so it's not any good for outside of HackTheBox etc.

Usage
./Nmapscans.sh <target>
  
***************************

googlescript.sh

A automated script that uses various GooleDork/GoogleHack queries to enumerate a company and email address domain.

usage ./googlescript.sh <www.<domain name>.<com, net etc> @<email domain>

Queries run every 25 seconds to stop Google having a hissy fit about traffic volume. But it's still quicker manual enumeration.

***************************
