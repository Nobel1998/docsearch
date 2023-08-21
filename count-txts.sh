#!/bin/bash

# Check if an argument was provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <directory_name>"
    exit 1
fi

# Find all items in the specified directory and output to 'find-results.txt'
find "$1" > find-results.txt

# Grep for '.txt' files from the 'find-results.txt' and output to 'grep-results.txt'
grep ".txt" find-results.txt > grep-results.txt

# Count the lines, words, and bytes in 'grep-results.txt'
wc grep-results.txt
