#!/bin/bash

# Check for the correct number of arguments
if [ $# -ne 2 ]; then
    echo "Usage: $0 <file> <search_string>"
    exit 1
fi

file="$1"
search_string="$2"

# Use grep to find the line containing the search string
result=$(grep -n "$search_string" "$file")

# Check if grep found a match
if [ -n "$result" ]; then
    echo "Found '$search_string' in $file:"
    echo "$result"
else
    echo "'$search_string' not found in $file"
fi
