FROM ansiblesemaphore/semaphore

USER root

RUN apk update && apk upgrade
RUN apk add py-pip


USER semaphore
