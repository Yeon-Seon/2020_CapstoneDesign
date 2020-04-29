#!/bin/sh

# refer to show_wifi_client.sh of OpenWrt
# show IP, MAC address and hostname info for all connected Wi-Fi devices
# echo "# All connected wifi devices, with IP address"
# echo "# hostname (if available), and MAC address"
# echo "# IP address, MAC address, hostname"

# ARP Table
arp_table=`cat /proc/net/arp | cut -f 1,2,21-23 -s -d" "`

# list all wireless network interfaces (for MAC80211 driver)
for interface in `iw dev | grep Interface | cut -f 2 -s -d" "`
do
  # for each interface, get mac addresses of connected stations/clients
  mac_list=`iw dev $interface station dump | grep Station | cut -f 2 -s -d" "`
  # echo "MAC LIST: $mac_list"
  
  # for each mac address in that list
  for mac in $mac_list
  do
    # echo "MAC: $mac"
    arp_ip=`echo "$arp_table" | grep $mac | awk '{print $1}'`
    
    for ip in $arp_ip
    do
      # echo "IP: $ip"
      dhcp_host=`cat /tmp/dhcp.leases | cut -f 2,3,4 -s -d" " | grep $ip | cut -f 3 -s -d" "`
      if [[ $dhcp_host ]]
      then
        echo -e "$ip\t$mac\t$dhcp_host"
      fi
    done
    
    # if a DHCP Lease has been given out by dnsmasq, save it
    # dhcp_ip=`cat /tmp/dhcp.leases | cut -f 2,3,4 -s -d" " | grep $mac | cut -f 2 -s -d" "`
    # dhcp_host=`cat /tmp/dhcp.leases | cut -f 2,3,4 -s -d" " | grep $mac | cut -f 3 -s -d" "`

    # show the mac address
    # echo -e "$ip\t$mac\t$host"
  done
done

