#!/bin/bash

# Check if GitHub CLI is installed
if command -v gh >/dev/null 2>&1; then
    GITHUB_USER=$(gh api user --jq .login 2>/dev/null)
    if [ -z "$GITHUB_USER" ]; then
        GITHUB_USER="unknown (gh auth missing)"
    fi
else
    GITHUB_USER="unknown (gh not installed)"
fi

# Log the date, time, and GitHub username
echo "[$(date)] - GitHub User: $GITHUB_USER" >> log.txt
