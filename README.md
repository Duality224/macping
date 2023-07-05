Usage: macping [mac address]

Clears the arp cache using the ip utility, then scans the network with arp-scan to output the IP and MAC addresses for each device on the network. Greps the specified MAC address in the output of arp-scan, outputs the corresponding IP address, then pings the IP address. Also runs nslookup on the IP address.

Requires setting network interface and network address range within the script before use.
