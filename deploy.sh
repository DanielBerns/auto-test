#!/bin/bash
set -euo pipefail

# Writes current ISO 8601 UTC datetime to start.txt
date -u +"%Y-%m-%dT%H:%M:%SZ" > start.txt
echo "Updated start.txt with current ISO datetime: $(cat start.txt)"
cd ~/Commands
./run_news_grab.sh
cd -
date -u +"%Y-%m-%dT%H:%M:%SZ" > stop.txt
echo "Updated stop.txt with current ISO datetime: $(cat stop.txt)"
