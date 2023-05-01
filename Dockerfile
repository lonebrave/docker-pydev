FROM python:3.11

LABEL maintainer Nick Hasser <nick.hasser@gmail.com>

RUN apt update && \
    apt upgrade -y && \
    /usr/local/bin/python -m pip install --upgrade pip

COPY requirements.txt ./requirements.txt

RUN pip install -r requirements.txt

CMD ["/bin/sh"]
