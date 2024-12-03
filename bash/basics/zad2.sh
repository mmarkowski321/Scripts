#!/bin/bash

#2. Memory Usage Monitoring (with background execution for 5 minutes)
#Write a script that:
# - Displays the current memory usage on the system (you can use free or top).
# - Saves the output to a log file.
# - Runs in the background for 5 minutes, saving the memory usage every minute.


timeout 300 bash -c 'while true; do free -h >> memoryused.txt; sleep 60; done' &

