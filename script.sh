venvname="venv"

if [ ! -d "$venvname" ]; then
    python -m venv "$venvname"
fi

. "$venvname/bin/activate"
pip install flask 

python app.py
