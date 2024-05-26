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
. "$venvname/bin/activate"
echo "Virtual environment '$venvname' activated."

# Install Flask
echo "Installing Flask..."
pip install flask
echo "Flask installed successfully."

# Run the application
echo "Running the application..."
python app.py
