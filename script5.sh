#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Pratyush Verma| Course: Open Source Software
# Purpose: Asks user 3 questions and generates a personal philosophy statement

echo "========================================"
echo "   Open Source Manifesto Generator"
echo "========================================"
echo ""
echo "Answer three questions to generate your manifesto."
echo ""

# --- Collect user input interactively using read ---
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# --- Get current date and generate output filename ---
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo ""
echo "Generating your manifesto..."
echo ""

# --- Clear file if it already exists ---
> "$OUTPUT"

# --- Write header to file using >> (append operator) ---
echo "========================================" >> "$OUTPUT"
echo "   My Open Source Manifesto"             >> "$OUTPUT"
echo "   Generated on: $DATE"                  >> "$OUTPUT"
echo "========================================" >> "$OUTPUT"
echo ""                                         >> "$OUTPUT"

# --- Compose paragraph using string concatenation ---
echo "Every day, I rely on $TOOL — a tool that exists"      >> "$OUTPUT"
echo "because someone chose to build it openly and"         >> "$OUTPUT"
echo "share it with the world for free. To me, freedom"     >> "$OUTPUT"
echo "means $FREEDOM. It is that same spirit that drives"   >> "$OUTPUT"
echo "open source: the belief that knowledge grows when"    >> "$OUTPUT"
echo "it is shared, not hoarded."                           >> "$OUTPUT"
echo ""                                                      >> "$OUTPUT"
echo "One day, I hope to build $BUILD and release it"       >> "$OUTPUT"
echo "under an open license — so that someone I have"       >> "$OUTPUT"
echo "never met can use it, improve it, and pass it on."    >> "$OUTPUT"
echo ""                                                      >> "$OUTPUT"
echo "That is what open source means to me."                >> "$OUTPUT"
echo ""                                                      >> "$OUTPUT"

# --- Alias concept demonstrated (alias = shortcut for a command) ---
# alias mani='cat manifesto_$(whoami).txt'
# The above alias would let you type 'mani' instead of the full cat command

echo "========================================"
echo "  Manifesto saved to: $OUTPUT"
echo "========================================"
echo ""

# --- Display the generated file ---
cat "$OUTPUT"
