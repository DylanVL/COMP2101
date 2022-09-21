#!/bin/bash
#This script is for displaying some basic system information for diagnostics. - sysinfo.sh

echo 'FQDN:'"$(hostname)"

echo "Host Information:" 

hostnamectl status | head 

echo "IP Addresses:"
ip a s $(ip a s | grep -w inet | awk '{print $2}')| awk '{print $2}' 
