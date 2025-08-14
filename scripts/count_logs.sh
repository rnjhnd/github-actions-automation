#!/bin/bash

LOG_COUNT=$(wc -l < ../data/log.txt)

echo "There have been $LOG_COUNT updates recorded in the log file." > ../data/log_count.txt
