#!/bin/bash

echo "Starting SilentRoot..."
echo ""

# Change to the script directory
cd "$(dirname "$0")"

# Run the SilentRoot script
python3 silentmain.py

# Keep terminal open if there's an error
if [ $? -ne 0 ]; then
    echo ""
    echo "Script encountered an error (Exit code: $?)"
    echo "Press Enter to exit..."
    read
fi
