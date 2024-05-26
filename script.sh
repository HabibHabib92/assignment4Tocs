venvname="env"

if [ ! -d "$venvname" ]; then
    python3 -m venv "$venvname"
fi

. "$venvname/bin/activate"
pip install flask 

python app.py 

