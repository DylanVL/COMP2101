#!/bin/bash
#This script is for displaying some basic system information for diagnostics. - sysinfo.sh
#Displaying some basic information about the system
FQDN=$(hostname)
#This holds the operating system information
OS=$(hostnamectl status | head -n 7 | grep -wh 'Operating System')
#This holds the current main IP address
IPV4=$(ip a s | grep -wh 'inet' | grep -wv 'inet 127' | awk '{print $2}' | cut -f1 -d "/")
#This holds the free space left in the root directory
FREESPACE=$(df -hT --type ext4 | grep -wh '/dev' | awk '{print $5}')
#Created template to display the information neatly.
cat <<EOF

Host Report for Dylan VL
__________________________________

FQDN: $FQDN
$OS
IPv4 Address: $IPV4
Free Space in Root: $FREESPACE
__________________________________
EOF

#hostnamectl status | head
#These commands show the current ip addresses for both ipv4 & ipv6
#echo "IP Addresses:"
#ip a s | grep -wh inet | grep -wv 'inet 127' | awk '{print $2}'
#ip a s | grep -wh inet6 | awk '{print $2}'
#Showing HDD information
#echo "Root Filesystem Status:"
#df -hT --type ext4

#Improvements to previous Lab 1: Making the report tidy and more 
#presentable

exit
