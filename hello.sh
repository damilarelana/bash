#!/bin/bash
echo "Please enter your name"
read name
echo -e "\n\nWelcome $name, kindly note that today's date and time are given below:"

# obtaining the date from the system
date "+%nDATE: %Y-%m-%d%nTIME: %H:%M:%S%n"

#grep
echo "Search stage"
find ~/Documents/Office/ -name "Report Plans.txt" 2>/dev/null

#showing so called agents 
echo -e "\n\nProcess stage"
ps -A | grep -i -s .UIAgent.

#measure disk usage
echo -e "\n\nDisk Usage"
df -ah

#measure folder sizes
echo -e "\n\nFolder Sizes"
du -sh /Users/Sysuser/Downloads/

#compare files
echo -e "\n\nFile Compare"
cmp zefile.txt lefile.txt

#show the top 5 processes
#echo -e "\n\nTop 5 Processes\n"
#top -n 5

#show free memory on system
echo -e "\n\nMemory Audit"
free -h

#List files that are open
echo -e "\n\nListing open files"
lsof

#Generate a random password
echo -e "\n\nRandom password:"
mkpasswd

#DNS Checkup from DNS Servers
echo -e "\n\nDNS checkup from DNS Servers"
dig tell.ng

#show users on system and system uptime
echo -e "\n\nUsers and System Uptime\n"
w

#show network connections
echo -e "\n\nNetwork status of WIFI interface en0\n"
ifconfig en0

#show all open network ports
echo -e "\n\nNetwork Ports\n"
netstat -a

#echo a message to the WALL
echo -e "\n\nWe are not about to finish ... " | wall

# next we compress this script into "hello.sh.gz" using gzip (this would only work when run from same directory as hello.sh)
echo -e "\nCompression stage"
tar -zcvf hello.sh.gz hello.sh
ls -l *.gz
echo -e "\n"
