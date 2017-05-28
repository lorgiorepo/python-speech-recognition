FROM python:3.6

MAINTAINER Lorgio Trinidad <lorgiotrinidad@gmail.com>

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN apt-get -y update && apt-get -y install build-essential \
    libpulse-dev \
    swig
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python3", "./init.py"]