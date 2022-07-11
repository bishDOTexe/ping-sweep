# ping-sweep Bash Script
Ping sweep a /24 network. (This script is a work in progress)

Created as public repository for Github experience purposes.

Please run this script with sudo or as root.

Input validation has been added to verify IPv4 address format.

Practical use can include feeding the output file.txt into an nmap scan. See example below:

```bash 
for ip in $(cat file.txt); do nmap $ip; done
```

# Planned Future Updates

- Update logic that supports different subnet sizes
