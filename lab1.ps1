# Run app in virtual environment
python -m venv .env
.env\Scripts\activate
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
python .\app.py

# Open browser and go to http://localhost:8080/hello