#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Your Name Here | Course: Open Source Software
# Purpose: Loops through key directories and reports permissions and size

# --- List of important system directories to audit ---
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "========================================"
echo "       Directory Audit Report"
echo "========================================"
echo ""

# --- For loop: goes through each directory one by one ---
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions using awk to get specific columns
        PERMS=$(ls -ld "$DIR" | awk '{print $1}')
        OWNER=$(ls -ld "$DIR" | awk '{print $3}')
        GROUP=$(ls -ld "$DIR" | awk '{print $4}')

        # Get directory size, suppress errors for restricted dirs
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)

        echo "  Directory  : $DIR"
        echo "  Permissions: $PERMS | Owner: $OWNER | Group: $GROUP"
        echo "  Size       : $SIZE"
        echo "  ----------------------------------------"
    else
        echo "  $DIR does not exist on this system."
        echo "  ----------------------------------------"
    fi
done

echo ""
echo "--- Git Config Directory Check ---"

# --- Check if Git config file exists and show its permissions ---
GIT_CONFIG="$HOME/.gitconfig"

if [ -f "$GIT_CONFIG" ]; then
    echo "  Git config found at: $GIT_CONFIG"
    PERMS=$(ls -l "$GIT_CONFIG" | awk '{print $1, $3, $4}')
    echo "  Permissions: $PERMS"
else
    echo "  No .gitconfig found. Git may not be configured yet."
    echo "  Run: git config --global user.name 'Your Name'"
fi