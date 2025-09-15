#!/bin/bash

# A simple script to calculate simple interest.

# Check if three arguments are provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <principal> <rate> <time>"
    exit 1
fi

# Assign arguments to variables
principal=$1
rate=$2
time=$3

# Calculate simple interest
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Print the result
echo "The simple interest is: $simple_interest"
