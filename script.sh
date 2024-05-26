#!/bin/bash

venvname="env"

# Check if virtual environment exists, and create it if not
if [ ! -d "$venvname" ]; then
    echo "Creating virtual environment '$venvname'..."
    python3 -m venv "$venvname"
    echo "Virtual environment '$venvname' created."
fi

# Activate the virtual environment
echo "Activating virtual environment '$venvname'..."
source "$venvname/bin/activate"
echo "Virtual environment '$venvname' activated."

# List files in the bin directory
echo "Files in '$venvname/bin' directory:"
ls "$venvname/bin"

# Install Flask
echo "Installing Flask..."
pip install flask
echo "Flask installed successfully."

# Run the application
echo "Running the application..."
python app.py
