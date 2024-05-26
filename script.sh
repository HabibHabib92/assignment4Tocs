#!/bin/bash

venvname="env"
if [ ! -d "$venvname" ]; then
    python3 -m venv "$venvname"
fi

