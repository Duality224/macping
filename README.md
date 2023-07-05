Usage: macping [mac address]

Clears the arp cache using the ip utility, then scans the network with arp-scan to output the IP and MAC addresses for each device on the network. Searches output of arp-scan for the specified MAC address, matches the MAC address to the corresponding IP address, then pings the resultant IP address. Also runs nslookup on the resultant IP address.

Requires setting network interface and network address range within the script before use.
