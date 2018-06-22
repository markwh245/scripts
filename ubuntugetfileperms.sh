echo "********* /etc/group *********"
echo -en '\n'
touch hostperms.txt
ls -ld /etc/group > hostperms.txt
echo -en '\n'
echo "********* /bin *********"
echo -en '\n'
ls -ld /bin >> hostperms.txt
echo -en '\n'
echo "********* /etc *********"
echo -en '\n'
ls -ld /etc >> hostperms.txt
echo -en '\n'
echo "********* /etc/hosts *********"
echo -en '\n'
ls -ld /etc/hosts >> hostperms.txt
echo -en '\n'
echo "********* /etc/hosts.allow *********"
echo -en '\n'
ls -ld /etc/hosts.allow >> hostperms.txt
echo -en '\n'
echo "********* /etc/hosts.deny *********"
echo -en '\n'
ls -ld /etc/hosts.deny >> hostperms.txt
echo -en '\n'
echo "********* /etc/issue *********"
echo -en '\n'
ls -ld /etc/issue >> hostperms.txt
echo -en '\n'
echo "********* /etc/login.defs *********"
echo -en '\n'
ls -ld /etc/login.defs >> hostperms.txt
echo -en '\n'
echo "********* /usr/share/base-files/motd *********"
echo -en '\n'
ls -ld /usr/share/base-files/motd >> hostperms.txt
echo -en '\n'
echo "********* /etc/mtab *********"
echo -en '\n'
ls -ld /etc/mtab >> hostperms.txt
echo -en '\n'
echo "********* /etc/passwd *********"
echo -en '\n'
ls -ld /etc/passwd >> hostperms.txt
echo -en '\n'
echo "********* /etc/rc.local *********"
echo -en '\n'
ls -ld /etc/rc.local >> hostperms.txt
echo -en '\n'
echo "********* /etc/securetty *********"
echo -en '\n'
ls -ld /etc/securetty >> hostperms.txt
echo -en '\n'
echo "********* /etc/security *********"
echo -en '\n'
ls -ld /etc/security >> hostperms.txt
echo -en '\n'
echo "********* /etc/services *********"
echo -en '\n'
ls -ld /etc/services >> hostperms.txt
echo -en '\n'
echo "********* /etc/shadow *********"
echo -en '\n'
ls -ld /etc/shadow >> hostperms.txt
echo -en '\n'
echo "********* /etc/ssh/sshd_config *********"
echo -en '\n'
ls -ld /etc/ssh/sshd_config >> hostperms.txt
echo -en '\n'
echo "********* /etc/ssh/ssh_host_dsa_key *********"
echo -en '\n'
ls -ld /etc/ssh/ssh_host_dsa_key >> hostperms.txt
echo -en '\n'
echo "********* /etc/ssh/ssh_host_rsa_key *********"
echo -en '\n'
ls -ld /etc/ssh/ssh_host_rsa_key >> hostperms.txt
echo -en '\n'
echo "********* /root *********"
echo -en '\n'
ls -ld /root >> hostperms.txt
echo -en '\n' 
echo "********* /sbin *********"
echo -en '\n'
ls -ld /sbin >> hostperms.txt
echo -en '\n'
echo "********* /tmp *********"
echo -en '\n'
ls -ld /tmp >> hostperms.txt
echo -en '\n'
echo "********* /usr/bin *********"
echo -en '\n'
ls -ld /usr/bin >> hostperms.txt
echo -en '\n'
echo "********* /usr/sbin *********"
echo -en '\n'
ls -ld /usr/sbin >> hostperms.txt
echo -en '\n'
echo "********* /var/log *********"
echo -en '\n'
ls -ld /var/log >> hostperms.txt
echo -en '\n'
echo "********* /var/log/boot* *********"
echo -en '\n'
ls -ld /var/log/boot* >> hostperms.txt
echo -en '\n'
echo "********* /etc/cron.d *********"
echo -en '\n'
ls -ld /etc/cron.d >> hostperms.txt
echo -en '\n'
echo "********* /etc/crontab *********"
echo -en '\n'
ls -ld /etc/crontab >> hostperms.txt
echo -en '\n'
echo "********* /var/log/dmesg *********"
echo -en '\n'
ls -ld /var/log/dmesg >> hostperms.txt
echo -en '\n'
echo "********* /var/log/lastlog *********"
echo -en '\n'
ls -ld /var/log/lastlog >> hostperms.txt
echo -en '\n'
echo "********* /var/log/syslog *********"
echo -en '\n'
ls -ld /var/log/syslog >> hostperms.txt
echo -en '\n'
echo "********* /var/log/syslog *********"
echo -en '\n'
ls -ld /var/log/syslog >> hostperms.txt
echo -en '\n'
echo "********* /var/log/wtmp *********"
echo -en '\n'
ls -ld /var/log/wtmp >> hostperms.txt
echo -en '\n'
echo "********* /var/run *********"
echo -en '\n'
ls -ld /var/run >> hostperms.txt
echo -en '\n'
echo "********* /var/run/*.pid *********"
echo -en '\n'
ls -ld /var/run/*.pid >> hostperms.txt
echo -en '\n'
echo "********* /var/spool/cron *********"
echo -en '\n'
ls -ld /var/spool/cron >> hostperms.txt
echo -en '\n'
echo "********* /usr/bin/crontab *********"
echo -en '\n'
ls -ld /usr/bin/crontab >> hostperms.txt
echo -en '\n'
echo "********* /etc/crontab *********"
echo -en '\n'
ls -ld /etc/crontab >> hostperms.txt
echo -en '\n'
echo "********* /var/spool/mail *********"
echo -en '\n'
ls -ld /var/spool/mail >> hostperms.txt
echo -en '\n'
echo "********* /var/tmp *********"
echo -en '\n'
ls -ld /var/tmp >> hostperms.txt
echo -en '\n'
awk '{print $1 " " $9}' hostperms.txt > testingperms.txt
grep -Fxvf ubuntufileperms.txt testingperms.txt    


