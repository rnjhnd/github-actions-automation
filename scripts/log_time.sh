#!/bin/bash

GITHUB_USER="${GITHUB_ACTOR:-$(gh api user --jq .login 2>/dev/null || echo unknown)}"

echo "[$(date)] - GitHub User: $GITHUB_USER" >> ../data/log.txt
