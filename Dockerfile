FROM ansiblesemaphore/semaphore
MAINTAINER S.Koulouzis
USER root

RUN apk update  && apk add --upgrade apk-tools
RUN apk upgrade --available


RUN echo "http://dl-cdn.alpinelinux.org/alpine/v3.8/main" > /etc/apk/repositories && echo "http://dl-cdn.alpinelinux.org/alpine/v3.8/community" >> /etc/apk/repositories

RUN apk update  && apk add --upgrade apk-tools
RUN apk upgrade --available

RUN echo "http://dl-cdn.alpinelinux.org/alpine/v3.9/main" > /etc/apk/repositories && echo "http://dl-cdn.alpinelinux.org/alpine/v3.9/community" >> /etc/apk/repositories

RUN apk update  && apk add --upgrade apk-tools
RUN apk upgrade --available
RUN apk upgrade --available
RUN apk del ansible


RUN apk add python3 python3-dev build-base libc-dev g++ libffi-dev libxml2 libffi-dev unixodbc-dev mariadb-dev python3-dev
RUN python3 -m pip install --upgrade pip
RUN pip install setuptools>=40.6.0 
RUN pip install cffi>=1.8,!=1.11.3

RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python3 get-pip.py
RUN pip install ansible
RUN ansible --version

USER semaphore

