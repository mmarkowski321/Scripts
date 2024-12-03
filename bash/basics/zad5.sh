#!/bin/bash

# 5. Server Availability Check
# Write a script that:
# - Checks if a given server (e.g., example.com) is reachable by using the ping command.
# - If the server is reachable, prints "Server is reachable", otherwise prints "Server is unreachable".

# Prompt the user to enter the server address (IP or domain)
read -p "Enter the server address (IP or domain): " server

# Use ping to check the server availability
ping -c 4 $server &> /dev/null

# Check the result of the ping command
if [ $? -eq 0 ]; then
    echo "Server is reachable"
else
    echo "Server is unreachable"
fi

