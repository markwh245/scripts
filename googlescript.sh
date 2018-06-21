#!/bin/bash

function google { Q="$@"; GOOG_URL='https://www.google.co.uk/search?tbs=li:1&q='; AGENT="Mozilla/4.0"; stream=$(curl -A "$AGENT" -skLm 10 "${GOOG_URL}${Q//\ /+}" | grep -oP '\/url\?q=.+?&amp' | sed 's|/url?q=||; s|&amp||'); echo -e "${stream//\%/\x}"; }

if [ "$1" == "" ]
then 
echo "Usage: ./googlescript.sh [enter website http://www.abc.com/ and enter email domain @abc.com]"
fi
if [ "$1" != "" ]
then
echo -en '\n'
echo "GoogleDork queries from Google Hacking for Pentration Testers - Johnny Long"
echo "http://www.mrjoeyjohnson.com/Google.Hacking.Filters.pdf"
echo "And https://www.ethicalhacker.net/features/book-reviews/google-hacking-ten-simple-security-searches-that-work"
echo -en '\n'
echo "Written by Mark WH 2017"
echo -en '\n'
echo "Working Get a Cup of Tea......"
echo "Sleep delay of 25 seconds between queries"
url1="${1##http://www.}"
url2="${1##http://}"
url3="https://www.$url1"
echo -en '\n'
echo "********* site overview *********"
echo -en '\n'
google site:$1
echo -en '\n'
echo -en '\n'
sleep 25
echo "********* site subdomains overview *********"
echo -en '\n'
google site:$url1 -site:$url2
echo -en '\n'
sleep 25
echo "********* links to target *********"
echo -en '\n'
google link:$1
echo -en '\n'
sleep 25
echo "********* Login inurl:login *********"
echo -en '\n'
google site:$url1 inurl:login 
google site:$url1 inurl:logon
echo -en '\n'
sleep 25
echo "********* intitle:index.of *********"
echo -en '\n'
google site:$url1 intitle:index.of
echo -en '\n'
sleep 25
echo "********* intitle:error *********"
echo -en '\n'
google site:$url1 intitle:error
echo -en '\n'
sleep 25
echo "********* intitle:Warning *********"
echo -en '\n'
google site:$url1 intitle:Warning
echo -en '\n'
sleep 25
echo "********* usernmame| userid |employee.ID | "your username is" *********"
echo -en '\n'
google site:$url1 username
google site:$url1 userid
google site:$url1 employee.ID
google site:$url1 "your username is"
echo -en '\n'
sleep 25
echo "********* password | passcode | "your password is" *********"
echo -en '\n'
google site:$url1 password 
google site:$url1 passcode
google site:$url1 "your password is"
echo -en '\n'
sleep 25
echo "********* admin | administrator *********"
echo -en '\n'
google site:$url1 admin 
google site:$url1 administrator
echo -en '\n'
sleep 25
echo "********* admin login *********"
echo -en '\n'
google site:$url1 "admin login"
echo -en '\n'
sleep 25
echo "********* -ext:html -ext:htm -ext:shtml -ext:asp -ext.php *********"
echo -en '\n'
google site:$url1 ext:html    
google site:$url1 ext:htm
google site:$url1 ext:shtml
google site:$url1 ext:asp
google site:$url1 ext.php
echo -en '\n'
sleep 25
echo "********* filetype:email addresses *********"
echo -en '\n'
google site:$1 $2 $url1
echo -en '\n'
sleep 25
echo "********* filetype:pdf *********"
echo -en '\n'
google site:$url1 filetype:pdf
echo -en '\n'
sleep 25
echo "********* filetype:doc *********"
echo -en '\n'
google site:$url1 filetype:doc
echo -en '\n'
sleep 25
echo "********* filetype:docx *********"
echo -en '\n'
google site:$url1 filetype:docx
echo -en '\n'
sleep 25
echo "********* filetype:xls *********"
echo -en '\n'
google site:$url1 filetype:xls
echo -en '\n'
sleep 25
echo "********* filetype:xlsx *********"
echo -en '\n'
google site:$url1 filetype:xlsx
echo -en '\n'
sleep 25
echo "********* filetype:ppt *********"
echo -en '\n'
google site:$url1 filetype:ppt
echo -en '\n'
sleep 25
echo "********* filetype:pps *********"
echo -en '\n'
google site:$url1 filetype:pps
echo -en '\n'
sleep 25
echo "********* Robots.txt *********"
echo -en '\n'
google site:$url1/robots.txt
echo -en '\n'
sleep 25
echo "********* OWA inurl:owa *********"
echo -en '\n'
google site:$url1 inurl:owa
echo -en '\n'
sleep 25
echo "********* Admin inurl:Admin *********"
echo -en '\n'
google site:$url1 inurl:Admin
echo -en '\n'
sleep 25
echo "********* \"Internal Server Error\" \"server at\" *********"
echo -en '\n'
google site:$url1 inurl:\"Internal Server Error\" \"server at\"
echo -en '\n'
sleep 25
echo "********* intitle:execution of this script not permitted *********"
echo -en '\n'
google site:$url1 intitle:execution of this script not permitted
echo -en '\n'
sleep 25
echo "********* email address filetype:csv csv *********"
echo -en '\n'
google site:$url1 email address filetype:csv csv
echo -en '\n'
sleep 25
echo "********* inurl:fcgi-bin/echo *********"
echo -en '\n'
google site:$url1 inurl:fcgi-bin/echo
echo -en '\n'
sleep 25
echo "********* intitle:index.of inbox *********"
echo -en '\n'
google site:$url1 intitle:index.of inbox
echo -en '\n'
sleep 25
echo "********* filetype:xls inurl:email.xls *********"
echo -en '\n'
google site:$url1 filetype:xls inurl:email.xls
echo -en '\n'
sleep 25
echo "********* filetype:xlsx inurl:email.xls *********"
echo -en '\n'
google site:$url1 filetype:xlsx inurl:email.xlsx
echo -en '\n'
sleep 25
echo "********* filetype:xls username password email *********"
echo -en '\n'
google site:$url1 filetype:xls username
google site:$url1 filetype:xls password
google site:$url1 filetype:xls email
echo -en '\n'
sleep 25
echo "********* filetype:xlsx username password email *********"
echo -en '\n'
google site:$url1 filetype:xlsx username
google site:$url1 filetype:xlsx password
google site:$url1 filetype:xlsx email
echo -en '\n'
sleep 25
echo "********* port 3389 *********"
echo -en '\n'
google site:$url1 inurl:3389 
google site:$url1 -intext:3389
echo -en '\n'
sleep 25
echo "********* port 4125 *********"
echo -en '\n'
google site:$url1 inurl:4125 
google site:$url1 -intext:4125
echo -en '\n'
sleep 25
echo "********* port 47 *********"
echo -en '\n'
google site:$url1 inurl:47 
google site:$url1 -intext:47
echo -en '\n'
sleep 25
echo "********* port 1723 *********"
echo -en '\n'
google site:$url1 inurl:1723 
google site:$url1 -intext:1723
echo -en '\n'
sleep 25
echo "********* port 8080 *********"
echo -en '\n'
google site:$url1 inurl:8080
google site:$url1 -intext:8080
echo -en '\n'
sleep 25
echo "********* Sql Usernames - Access denied for user using password *********"
echo -en '\n'
google site:$url1 "Access denied for user" "using password"
echo -en '\n'
sleep 25
echo "********* Sql Dumps (1) - # Dumping data for table *********"
echo -en '\n'
google site:$url1 "# Dumping data for table"
echo -en '\n'
sleep 25
echo "********* Sql Dumps (2) filetype:inc intext:mysql_connect *********"
echo -en '\n'
google site:$url1 filetype:inc intext:mysql_connect
echo -en '\n'
sleep 25
echo "********* Sql Dumps (3) filetype:sql + IDENTIFIED BY -cvs *********"
echo -en '\n'
google site:$url1 filetype:sql + "IDENTIFIED BY" -cvs
echo -en '\n'
sleep 25
echo "********* VNC Viewer - intitle:VNC viewer for Java *********"
echo -en '\n'
google site:$url1 intitle:"VNC viewer for Java"
echo -en '\n'
sleep 25
echo "********* IP Cameras - allinurl:index.htm?cus?audio *********"
echo -en '\n'
google site:$url1 allinurl:index.htm?cus?audio
echo -en '\n'
sleep 25
echo "********* Open Cisco Devs - inurl:level/15/exec/~/show *********"
echo -en '\n'
google site:$url1 inurl:"level/15/exec/~/show"
echo -en '\n'
sleep 25
echo "********* Open Cisco Switches - intitle:"switch home page" "cisco systems" "Telnet" *********"
echo -en '\n'
google site:$url1 intitle:"switch home page" "cisco systems" "Telnet"
echo -en '\n'
sleep 25
echo "********* Video Conferencing intext:"Videoconference" ext:htm *********"
echo -en '\n'
google site:$url1 intext:"Videoconference" ext:htm
echo -en '\n'
sleep 25
echo "********* PHP Admin - intitle:phpmyadmin "Welcome to phpMyAdmin" *********"
echo -en '\n' 
google site:$url1 intitle:phpmyadmin "Welcome to phpMyAdmin"
echo -en '\n'
echo "********* Done **********"
fi
