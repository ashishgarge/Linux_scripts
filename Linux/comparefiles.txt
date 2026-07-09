#!/bin/bash

FILE1="file1.txt"
FILE2="file2.txt"

# Compare line-by-line
# -q: Brief mode (tells you if they differ)
# -u: Unified mode (shows the actual changes with + and - signs)
if diff -q "$FILE1" "$FILE2" > /dev/null; then
    echo "Success: No differences found."
else
    echo "Differences found:"
    echo "------------------"
    diff -u "$FILE1" "$FILE2"
fi