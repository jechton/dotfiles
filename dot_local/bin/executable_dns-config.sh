#!/usr/bin/env bash

# Check if DNS argument is provided
if [ $# -eq 0 ]; then
    echo "Please provide a DNS server as an argument."
    exit 1
fi

DNS_SERVER="$1"

nmcli -g name,type connection show --active | awk -F: '/ethernet|wireless/ { print $1 }' | while read -r connection; do
  nmcli con mod "$connection" ipv6.ignore-auto-dns yes
  nmcli con mod "$connection" ipv4.ignore-auto-dns yes
  nmcli con mod "$connection" ipv4.dns "$DNS_SERVER"
  nmcli con down "$connection" && nmcli con up "$connection"
done
