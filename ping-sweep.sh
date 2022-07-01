#!/bin/bash


echo "Do you know your network ID of the network you intend to ping-sweep? (Y or N)"
read answer

if [ $answer == "N" ] || [ $answer == 'n' ]
then
echo "Here is the network info of the network currently connected to interface eth0:"
echo " "
VAR=$(ifconfig | grep eth0 -A 1)
echo ${VAR}

elif [ $answer == "Y" ] || [ $answer == 'y' ]
then
echo "Great! Please continue." 

else
echo "Please try again and answer the question!"
exit
fi

echo " " 

echo "What is your network ID? (First 3 octets of IP Address) " 
read ip_first

if [ "$ip_first" == "" ] 
then
echo "You forgot to add the first 3 octets of an IP Address! Try again."

else
echo "Successful ping results output to file.txt in this directory!"
for ip_last in `seq 1 254`; do
ping $ip_first.$ip_last -c 1 | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" & 
done > file.txt
fi
