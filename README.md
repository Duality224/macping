Usage: macping [MAC ADDRESS]

Clears the arp cache using the ip utility, then scans the network with arp-scan to output the IP and MAC addresses for each device on the network. Greps the specified MAC address in the output of arp-scan, outputs the corresponding IP address, then pings the IP address. Also runs nslookup on the IP address.

Requires setting network interface and network address range within the script before use.

Also included in this repository is the maclist script (usage: maclist). This script lists all devices on the network by their MAC address, removes duplicate entries, and replaces each known device's MAC address with the respective device name.
