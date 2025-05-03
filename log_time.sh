#!/bin/bash

# Get the currently authenticated GitHub username
GITHUB_USER=$(gh api user --jq .login)

# Log the current date, time, and GitHub username
echo "[$(date)] - GitHub User: $GITHUB_USER" >> log.txt


