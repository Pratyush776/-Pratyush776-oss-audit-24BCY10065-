#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Your Name Here | Course: Open Source Software
# Purpose: Checks if git is installed and prints its details and philosophy

# --- Define the package to inspect ---
PACKAGE="git"

# --- Check if git is installed using command substitution ---
if command -v $PACKAGE &>/dev/null; then
    echo "✔ $PACKAGE is installed on this system."
    echo ""

    # Display version info
    VERSION=$($PACKAGE --version)
    echo "  Version : $VERSION"

    # Show install location
    LOCATION=$(which $PACKAGE)
    echo "  Location: $LOCATION"
else
    echo "✘ $PACKAGE is NOT installed."
    echo "  Install it with: sudo apt install git"
fi

echo ""
echo "--- Philosophy Note ---"

# --- Case statement: prints a philosophy note based on package name ---
case $PACKAGE in
    git)
        echo "Git: Born in 10 days out of necessity — Linus built"
        echo "the tool the world was missing, then gave it away."
        ;;
    httpd|apache2)
        echo "Apache: the web server that built the open internet."
        ;;
    mysql)
        echo "MySQL: open source at the heart of millions of apps."
        ;;
    python3)
        echo "Python: a language shaped entirely by its community."
        ;;
    vlc)
        echo "VLC: built by students, plays everything, costs nothing."
        ;;
    *)
        echo "$PACKAGE: part of the open source ecosystem."
        ;;
esac