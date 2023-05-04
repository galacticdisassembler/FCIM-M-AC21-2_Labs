FROM python:3.10-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
COPY app.py app.py

RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install wheel gunicorn
RUN python3 -m pip install -r requirements.txt

EXPOSE 8080
CMD ["gunicorn", "-b", "0.0.0.0:8080", "app:app"]