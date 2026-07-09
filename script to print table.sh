#!/bin/bash

echo "Enter the number for which you want to print the table:"
read number

for x in {1..10}
do
    result=$((number * x))
    echo "$number * $x = $result"
done