FROM ubuntu:22.04

RUN apt update
RUN apt install -y python3-pip
RUN pip3 install --upgrade pip setuptools wheel

WORKDIR /app

COPY requirements.txt .

RUN pip3 install -r requirements.txt

COPY app.py .
COPY wsgi.py .

ENTRYPOINT ["gunicorn", "-w", "4", "-b", "0.0.0.0:5000", "wsgi:app"]

