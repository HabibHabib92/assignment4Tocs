#!/bin/bash

# Check if virtual environment exists, and create it if not
venvname="env"
if [ ! -d "$venvname" ]; then
    echo "Creating virtual environment '$venvname'..."
    python3 -m venv "$venvname"
    echo "Virtual environment '$venvname' created."
fi

# Activate the virtual environment
echo "Activating virtual environment '$venvname'..."
. "$venvname/bin/activate"
echo "Virtual environment '$venvname' activated."

# Install Flask using pip within the virtual environment
echo "Installing Flask..."
pip install flask
echo "Flask installed successfully."

# Run the application using python within the virtual environment
echo "Running the application..."
python app.py
