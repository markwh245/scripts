#!/bin/bash
echo "Enter target IP"
read userInput
echo ""
echo "*********** smb-os-discovery **************"
echo ""
nmap -Pn -p139,445 --script=smb-os-discovery  $userInput
echo ""
echo "*********** smb-security-mode **************"
echo ""
nmap -Pn -p139,445 --script=smb-security-mode $userInput
echo ""
echo "*********** smb-enum-shares **************"
echo ""
nmap -Pn -p139,445 --script=smb-enum-shares $userInput
echo ""
echo "*********** smb-brute.nse,smb-enum-shares **************"
echo ""
nmap -Pn -p139,445 --script=smb-brute.nse,smb-enum-shares $userInput
echo ""
echo "*********** smb-enum-users **************"
echo ""
nmap -Pn -p139,445 --script=smb-enum-users $userInput
echo ""
echo "*********** smb-enum-sessions **************"
echo ""
nmap -Pn -v -p139,445 --script=smb-enum-sessions  $userInput
echo ""
echo "*********** smb-enum-processes  **************"
echo ""
nmap -Pn -v -p139,445 --script=smb-enum-processes $userInput
echo ""
echo "*********** smb-system-info **************"
echo ""
nmap -Pn -v -p139,445 --script=smb-system-info $userInput
echo ""
echo "Done"
