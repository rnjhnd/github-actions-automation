#!/bin/bash

# Use GitHub username from environment (if available)
GITHUB_USER="${GITHUB_USER:-$(git config user.name)}"

# Log timestamp and user
echo "[$(date)] GitHub User: $GITHUB_USER" >> log.txt