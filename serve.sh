#!/bin/sh
# Serve the Mosiria evidence site on port 8999 (reachable at http://kibe-novo:8999)
if ss -ltn | grep -q ':8999 '; then echo "Already running: http://kibe-novo:8999"; exit 0; fi
cd "$(dirname "$0")" && setsid nohup python3 -m http.server 8999 --bind 0.0.0.0 >/dev/null 2>&1 < /dev/null &
echo "Started: http://kibe-novo:8999"
