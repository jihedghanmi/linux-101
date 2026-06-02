#!/bin/bash

# 1. Fetch Local IP
# Uses the 'hostname' command to find internal network addresses
local_ip=$(hostname -I | awk '{print $1}')

# 2. Fetch Public IP
# Quietly requests your external IP from a public API
public_ip=$(curl -s https://api.ipify.org)

# 3. Check Google Reachability
# Sends 1 ping packet with a 2-second timeout; silences the standard output
if ping -c 1 -W 2 google.com > /dev/null 2>&1; then
    google_status="yes"
else
    google_status="no"
fi

# Print the results
echo "Your local IP: $local_ip"
echo "Your public IP: $public_ip"
echo "Whether google.com is reachable: $google_status"

