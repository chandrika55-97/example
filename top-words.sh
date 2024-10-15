#!/bin/bash

# Check if a file is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <script_file>"
    exit 1
fi

# Get the input file
input_file=$1

# Display the top 5 repeated words
cat "$input_file" | tr -s '[:space:]' '\n' | sort | uniq -c | sort -nr | head -n 5