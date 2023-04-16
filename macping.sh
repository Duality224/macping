#!/bin/bash

#checking sudo rights
if [ $EUID != 0 ]; then
    sudo "$0" "$@"
    exit $?
fi

#resetting arp cache
sudo ip link set arp off dev [NETWORK INTERFACE, e.g. wlo1] && sudo ip link set arp on dev [NETWORK INTERFACE, e.g. wlo1]
#running arp-scan on local network, grepping input argument in arp-scan output (should be MAC address), outputting corresponding IP address, and pinging corresponding IP address
ping -c 5 -w 1000 $(sudo arp-scan --retry=5 --interface=[NETWORK INTERFACE, e.g. wlo1] [NETWORK ADDRESS RANGE, e.g. 192.168.1.0/24] | grep -m 1 $1 | awk ' { printf $1 } ')
