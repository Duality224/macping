#!/bin/bash

#checking sudo rights
if [ $EUID != 0 ]; then
    sudo "$0" "$@"
    exit $?
fi

#resetting arp cache
sudo ip link set arp off dev [NETWORK INTERFACE, e.g. wlo1] && sudo ip link set arp on dev [NETWORK INTERFACE, e.g. wlo1]
#running arp-scan on local network, piping arp-scan output through grep to remove duplicate entries, and piping grep output to sed to replace each MAC address with the respective device name where known
sudo arp-scan --retry=5 --interface=[NETWORK INTERFACE, e.g. wlo1] [NETWORK ADDRESS RANGE, e.g. 192.168.1.0/24] | grep -v 'DUP' | sed 's/[MAC1]/[DEVICENAME1]/g; s/[MAC2]/[DEVICENAME2]/g; s/[MAC3]/[DEVICENAME3]/g'
