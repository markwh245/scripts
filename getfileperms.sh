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
echo "********* /etc/aliases *********"
echo -en '\n'
ls -ld /etc/aliases >> hostperms.txt
echo -en '\n'
echo "********* /etc/default/login *********"
echo -en '\n'
ls -ld /etc/default/login >> hostperms.txt
echo -en '\n'
echo "********* /etc/exports *********"
echo -en '\n'
ls -ld /etc/exports >> hostperms.txt
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
echo "********* /etc/hosts.equiv *********"
echo -en '\n'
ls -ld /etc/hosts.equiv >> hostperms.txt
echo -en '\n'
echo "********* /etc/hosts.lpd *********"
echo -en '\n'
ls -ld /etc/hosts.lpd >> hostperms.txt
echo -en '\n'
echo "********* /etc/inetd.conf *********"
echo -en '\n'
ls -ld /etc/inetd.conf >> hostperms.txt
echo -en '\n'
echo "********* /etc/issue *********"
echo -en '\n'
ls -ld /etc/issue >> hostperms.txt
echo -en '\n'
echo "********* /etc/login.access *********"
echo -en '\n'
ls -ld /etc/login.access >> hostperms.txt
echo -en '\n'
echo "********* /etc/login.conf *********"
echo -en '\n'
ls -ld /etc/login.conf >> hostperms.txt
echo -en '\n'
echo "********* /etc/login.defs *********"
echo -en '\n'
ls -ld /etc/login.defs >> hostperms.txt
echo -en '\n'
echo "********* /etc/motd *********"
echo -en '\n'
ls -ld /etc/motd >> hostperms.txt
echo -en '\n'
echo "********* /etc/mtab *********"
echo -en '\n'
ls -ld /etc/mtab >> hostperms.txt
echo -en '\n'
echo "********* /etc/netgroup *********"
echo -en '\n'
ls -ld /etc/netgroup >> hostperms.txt
echo -en '\n'
echo "********* /etc/passwd *********"
echo -en '\n'
ls -ld /etc/passwd >> hostperms.txt
echo -en '\n'
echo "********* /etc/rc.d *********"
echo -en '\n'
ls -ld /etc/rc.d >> hostperms.txt
echo -en '\n'
echo "********* /etc/rc.local *********"
echo -en '\n'
ls -ld /etc/rc.local >> hostperms.txt
echo -en '\n'
echo "********* /etc/rc.sysinit *********"
echo -en '\n'
ls -ld /etc/rc.sysinit >> hostperms.txt
echo -en '\n'
echo "********* /etc/sercuetty *********"
echo -en '\n'
ls -ld /etc/sercuetty >> hostperms.txt
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
echo "********* /etc/ssh/ssh_host_key *********"
echo -en '\n'
ls -ld /etc/ssh/ssh_host_key >> hostperms.txt
echo -en '\n'
echo "********* /etc/ssh/sshd_config *********"
echo -en '\n'
ls -ld /etc/ssh/sshd_config >> hostperms.txt
echo -en '\n'
echo "********* /etc/ssh/ssh_host_dsa_key *********"
echo -en '\n'
ls -ld /etc/ssh/ssh_host_dsa_key >> hostperms.txt
echo -en '\n'
echo "********* /etc/ssh/ssh_host_key *********"
echo -en '\n'
ls -ld /etc/ssh/ssh_host_key >> hostperms.txt
echo -en '\n'
echo "********* /etc/ssh/ssh_host_rsa_key *********"
echo -en '\n'
ls -ld /etc/ssh/ssh_host_rsa_key >> hostperms.txt
echo -en '\n'
echo "********* /etc/ttys *********"
echo -en '\n'
ls -ld /etc/ttys >> hostperms.txt
echo -en '\n'
echo "********* /root *********"
echo -en '\n'
ls -ld /root >> hostperms.txt
echo -en '\n'
echo "********* /sbin *********"
echo -en '\n'
ls -ld /sbin >> hostperms.txt
echo -en '\n'
echo "********* /var/log *********"
echo -en '\n'
ls -ld /var/log >> hostperms.txt
echo -en '\n'
echo "********* /var/log/authlog* *********"
echo -en '\n'
ls -ld /var/log/authlog* >> hostperms.txt
echo -en '\n'
echo "********* /var/log/boot* *********"
echo -en '\n'
ls -ld /var/log/boot* >> hostperms.txt
echo -en '\n'
echo "********* /var/log/cron* *********"
echo -en '\n'
ls -ld /var/log/cron* >> hostperms.txt
echo -en '\n'
echo "********* /var/log/dmesg *********"
echo -en '\n'
ls -ld /var/log/dmesg >> hostperms.txt
echo -en '\n'
echo "********* /var/log/lastlog *********"
echo -en '\n'
ls -ld /var/log/lastlog >> hostperms.txt
echo -en '\n'
echo "********* /var/log/maillog* *********"
echo -en '\n'
ls -ld /var/log/maillog* >> hostperms.txt
echo -en '\n'
echo "********* /var/log/messages* *********"
echo -en '\n'
ls -ld /var/log/messages* >> hostperms.txt
echo -en '\n'
echo "********* /var/log/secure* *********"
echo -en '\n'
ls -ld /var/log/secure* >> hostperms.txt
echo -en '\n'
echo "********* /var/log/spooler* *********"
echo -en '\n'
ls -ld /var/log/spooler* >> hostperms.txt
echo -en '\n'
echo "********* /var/log/syslog* *********"
echo -en '\n'
ls -ld /var/log/syslog* >> hostperms.txt
echo -en '\n'
echo "********* /var/log/utmp* *********"
echo -en '\n'
ls -ld /var/log/utmp* >> hostperms.txt
echo -en '\n'
echo "********* /var/log/wtmp* *********"
echo -en '\n'
ls -ld /var/log/wtmp* >> hostperms.txt
echo -en '\n'
echo "********* /var/log/xferlog *********"
echo -en '\n'
ls -ld /var/log/xferlog >> hostperms.txt
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
echo "********* /var/spool/cron/crontabs/root *********"
echo -en '\n'
ls -ld /var/spool/cron/crontabs/root >> hostperms.txt
echo -en '\n'
echo "********* /var/spool/mail *********"
echo -en '\n'
ls -ld /var/spool/mail >> hostperms.txt
echo -en '\n'
echo "********* /var/spool/mail/* *********"
echo -en '\n'
ls -ld /var/spool/mail/* >> hostperms.txt
echo -en '\n'
echo "********* /var/tmp *********"
echo -en '\n'
ls -ld /var/tmp >> hostperms.txt
echo -en '\n'
echo "********* test1 *********"
echo -en '\n'
ls -ld /root/Desktop/fileperms/test1 >> hostperms.txt
echo -en '\n'
echo "********* test2 *********"
echo -en '\n'
ls -ld /root/Desktop/fileperms/test2 >> hostperms.txt
echo -en '\n'
echo "********* test3 *********"
echo -en '\n'
ls -ld /root/Desktop/fileperms/test3 >> hostperms.txt
echo -en '\n'
awk '{print $1 " " $9}' hostperms.txt > testingperms.txt
grep -Fxvf fileperms.txt testingperms.txt    


