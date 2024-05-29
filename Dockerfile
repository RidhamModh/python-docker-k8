# Specifying the base image for my docker image. using version 3.9 with slim variant (lighter version of python) to reduce size
FROM python:3.9-slim

WORKDIR /usr/src/app

COPY . /usr/src/app/
#or i can also write COPY . .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE  5000

CMD ["python", "app.py"]

