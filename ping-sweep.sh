#!/bin/bash

echo "What is your network ID? (First 3 octets of IP Address) " 
read ip_first

if [ "$ip_first" == "" ]
echo "You forgot to add the first 3 octets of an IP Address!"

else
echo "Successful ping results output to file.txt in this directory!"
for ip_last in `seq 1 254`; do
ping $ip_first.$ip_last -c 1 | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" & 
done > file.txt
fi
