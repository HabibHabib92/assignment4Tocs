#!/bin/bash

echo "Current directory: $(pwd)"
ls -l
ls -l env/bin  # Check if env/bin directory exists

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

# Install Flask using pip within the virtual environment
echo "Installing Flask..."
pip install flask
echo "Flask installed successfully."

# Run the application using python within the virtual environment
echo "Running the application..."
python app.py
