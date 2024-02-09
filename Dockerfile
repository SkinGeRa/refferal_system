FROM python:3.10-slim-bullseye

WORKDIR /app

COPY requirements.txt /app/

RUN pip install -r requirements.txt

COPY . /app/

CMD ["gunicorn", "config.wsgi:application --timeout 0 --bind 0.0.0.0:8000"]

