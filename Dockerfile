FROM ubuntu:18.04

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev

RUN pip install flask peewee

WORKDIR /app

COPY . /app

ENTRYPOINT [ "html" ]

CMD [ "62Codomo_home.html" ]