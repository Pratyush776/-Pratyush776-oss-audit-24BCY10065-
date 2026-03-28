#!/bin/bash
# Script 4: Log File Analyzer
# Author: Pratyush Verma | Course: Open Source Software
# Purpose: Reads a log file and counts occurrences of a keyword

# --- Accept log file path and keyword as arguments ---
LOGFILE=$1
KEYWORD=${2:-"error"}   # Default keyword is 'error' if none provided
COUNT=0

# --- Check if a file argument was given ---
if [ -z "$LOGFILE" ]; then
    echo "Usage: ./script4.sh <logfile> [keyword]"
    echo "Example: ./script4.sh /var/log/dpkg.log install"
    exit 1
fi

# --- Check if the file actually exists ---
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File '$LOGFILE' not found."
    exit 1
fi

# --- Check if file is empty, retry with fallback if so ---
if [ ! -s "$LOGFILE" ]; then
    echo "Warning: File is empty. Trying /var/log/dpkg.log instead..."
    LOGFILE="/var/log/dpkg.log"
    if [ ! -s "$LOGFILE" ]; then
        echo "Fallback file also empty. Exiting."
        exit 1
    fi
fi

echo "========================================"
echo "  Log File Analyzer"
echo "========================================"
echo "  File    : $LOGFILE"
echo "  Keyword : $KEYWORD"
echo "========================================"
echo ""

# --- Read file line by line using while loop ---
while IFS= read -r LINE; do
    # --- If line contains keyword, increment counter ---
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "  Keyword '$KEYWORD' found $COUNT times."
echo ""
echo "--- Last 5 matching lines ---"

# --- Print last 5 lines containing the keyword ---
grep -i "$KEYWORD" "$LOGFILE" | tail -5
