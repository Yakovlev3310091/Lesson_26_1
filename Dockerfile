FROM python3.10

WORKDIR /code
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY run.py .
COPY project .

CMD flask run -h 0.0.0.0 -p 80
