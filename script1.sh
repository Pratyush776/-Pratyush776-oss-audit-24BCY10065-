#!/bin/bash
# Script 1: System Identity Report
# Author: Your Name Here | Course: Open Source Software
# Purpose: Displays system information like a welcome screen

# --- Variables ---
STUDENT_NAME="Pratyush Verma"
SOFTWARE_CHOICE="Linux Kernel in VScode terminal"

# --- Gather system info using command substitution ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')
CURRENT_DATE=$(date '+%d %B %Y, %H:%M')
HOME_DIR=$HOME

# --- Display formatted output ---
echo "========================================"
echo "   Open Source Audit — $STUDENT_NAME"
echo "   Chosen Software : $SOFTWARE_CHOICE"
echo "========================================"
echo ""
echo "  Distribution : $DISTRO"
echo "  Kernel       : $KERNEL"
echo "  User         : $USER_NAME"
echo "  Home Dir     : $HOME_DIR"
echo "  Uptime       : $UPTIME"
echo "  Date & Time  : $CURRENT_DATE"
echo ""
echo "  License Note : The Linux kernel is licensed"
echo "                 under GNU GPL v2 — meaning it"
echo "                 must always remain open source."
echo "========================================"