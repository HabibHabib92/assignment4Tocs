#!/bin/bash

echo "Current directory: $(pwd)"  # Print the current directory
ls -l                              # List the files in the current directory

vename='myenv'                     # Define the virtual environment name

python3 -m venv $vename            # Create a virtual environment named 'myenv'

source $vename/bin/activate        # Activate the virtual environment

pip install flask                  # Install Flask using pip

python app.py                      # Run the Flask application
