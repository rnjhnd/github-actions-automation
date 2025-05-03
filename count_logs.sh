#!/bin/bash

LOG_COUNT=$(wc -l < log.txt)

echo "There have been $LOG_COUNT updates recorded in the log file." > log_count.txt
