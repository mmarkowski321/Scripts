#!/bin/bash
# Log File Analysis
# Write a script that:
# - Searches for all errors in system log files (e.g., /var/log/syslog).
# - Counts how many times each error occurs and saves the results to a file.

error_count=$(grep -ic 'error' /var/log/syslog)
fail_count=$(grep -ic 'fail' /var/log/syslog)

echo "Number of errors: $error_count" >> numberOfErrorsFails
echo "Number of fails: $fail_count" >> numberOfErrorsFails

