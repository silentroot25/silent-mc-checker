#!/bin/bash

echo "================================================"
echo "           SilentRoot Setup Script"
echo "================================================"
echo ""
echo "Installing Python requirements for SilentRoot..."
echo ""

# Change to the script directory
cd "$(dirname "$0")"

# Check if Python is available
if ! command -v python3 &> /dev/null; then
    echo "ERROR: Python 3 is not installed!"
    echo "Please install Python 3 using your package manager:"
    echo "  Ubuntu/Debian: sudo apt install python3 python3-pip"
    echo "  Fedora/RHEL: sudo dnf install python3 python3-pip"
    echo "  Arch: sudo pacman -S python python-pip"
    echo ""
    read -p "Press Enter to exit..."
    exit 1
fi

echo "Python found! Version:"
python3 --version
echo ""

# Check if pip is available
if ! command -v pip3 &> /dev/null; then
    echo "ERROR: pip3 is not available!"
    echo "Attempting to install pip..."
    python3 -m ensurepip --upgrade
    if [ $? -ne 0 ]; then
        echo "Failed to install pip. Please install it manually."
        read -p "Press Enter to exit..."
        exit 1
    fi
fi

echo "Installing requirements from requirements.txt..."
echo ""
python3 -m pip install -r requirements.txt

if [ $? -eq 0 ]; then
    echo ""
    echo "================================================"
    echo "         Setup completed successfully!"
    echo "================================================"
    echo ""
    echo "SilentRoot is ready to use."
    echo "You can now run './run.sh' to start the application."
    echo ""
else
    echo ""
    echo "================================================"
    echo "            Setup failed!"
    echo "================================================"
    echo ""
    echo "There was an error installing the requirements."
    echo "Please check the error messages above."
    echo ""
fi

read -p "Press Enter to exit..."
