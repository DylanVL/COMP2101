#!/bin/bash
#This script is for displaying some basic system information for diagnostics. - sysinfo.sh

echo 'FQDN:'"$(hostname)"

echo "Host Information:"

hostnamectl status | head

echo "IP Addresses:"
ip a s | grep -wh inet | grep -wv 'inet 127' | awk '{print $2}'
ip a s | grep -wh inet6 | awk '{print $2}'

echo "Root Filesystem Status:"
df -hT --type ext4

exit
