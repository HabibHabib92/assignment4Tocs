venvname="venv"

if [ ! -d "$venvname" ]; then
    python -m venv "$venvname"
fi

source "$venvname/bin/activate"
pip install flask gunicorn

gunicorn -w 4 -b 0.0.0.0:5000 --reload app:app
