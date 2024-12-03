#!/bin/bash

#1. File Search
#Write a script that:
#- Searches for all files in the current directory and its subdirectories with a specific extension (.txt).
#- Outputs the file name and its size

find . -type f -name "*.txt" -exec ls -l {} \;


