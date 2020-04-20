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

USER semaphore

