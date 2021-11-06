FROM python:3.10 as pydev

RUN /usr/local/bin/python -m pip install --upgrade pip

COPY requirements.txt ./requirements.txt

RUN pip install -r requirements.txt

CMD ["/bin/sh"]
