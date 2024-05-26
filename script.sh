#!/bin/bash

venvname="env"

if [ ! -d "$venvname" ]; then
    python -m venv "$venvname"
fi

source "$venvname/bin/activate"
pip install flask

python3 app.py
