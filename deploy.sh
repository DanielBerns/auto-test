#!/bin/bash
set -euo pipefail

# Writes current ISO 8601 UTC datetime to timestamp.txt
date -u +"%Y-%m-%dT%H:%M:%SZ" > timestamp.txt
echo "Updated timestamp.txt with current ISO datetime: $(cat timestamp.txt)"
