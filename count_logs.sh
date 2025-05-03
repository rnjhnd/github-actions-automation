#!/bin/bash

# Count number of log entries
LOG_COUNT=$(wc -l < log.txt)

# Write the refined message to log_count.txt
echo "There have been $LOG_COUNT updates recorded in the log file." > log_count.txt
