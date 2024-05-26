venvname="venv"

if [ ! -d "$venvname" ]; then
    python3 -m venv "$venvname"
fi

source "$venvname/bin/activate"
pip install flask 

python app.py
