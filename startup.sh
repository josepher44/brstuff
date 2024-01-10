#!/bin/bash

# Get the current script directory
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Set the target directory path
TARGET_DIR="$SCRIPT_DIR/../btcrecover/btcrecover"

# Copy the file to the target directory
cp "$SCRIPT_DIR/btcrpass.py" "$TARGET_DIR/"

echo "File copied successfully."

# Change to the target directory
cd "$TARGET_DIR"

# Replace the existing file with the copied file
mv -f "btcrpass.py" "btcrpass.py"

echo "File replaced successfully."
cd ..
touch performancelog.txt
