#!/bin/bash

if [ -n "$GITHUB_ACTOR" ]; then
    GITHUB_USER="$GITHUB_ACTOR"
elif command -v gh >/dev/null 2>&1; then
    GITHUB_USER=$(gh api user --jq .login 2>/dev/null)
    GITHUB_USER=${GITHUB_USER:-"unknown (gh auth missing)"}
else
    GITHUB_USER="unknown (gh not installed)"
fi

echo "[$(date)] - GitHub User: $GITHUB_USER" >> log.txt
