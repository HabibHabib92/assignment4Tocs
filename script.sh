#!/bin/bash

echo "Current directory: $(pwd)"
ls -l  # List files and directories in the current directory for debugging

# Create virtual environment
venvname="envh"
python3 -m venv "$venvname"
