#!/bin/bash

venvname="env"

# Check if virtual environment exists, and create it if not
if [ ! -d "$venvname" ]; then
    echo "Creating virtual environment '$venvname'..."
    python3 -m venv "$venvname"
    echo "Virtual environment '$venvname' created."
fi

# List files in the bin directory
echo "Files in '$venvname/bin' directory:"
ls "$venvname/bin"

# Install Flask using pip within the virtual environment
echo "Installing Flask..."
"$venvname/bin/pip" install flask
echo "Flask installed successfully."

# Run the application using python within the virtual environment
echo "Running the application..."
"$venvname/bin/python" app.py
