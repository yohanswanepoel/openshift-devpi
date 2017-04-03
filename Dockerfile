FROM python:3.5-alpine

ENV DEVPI_SERVERDIR=/mnt \
    DEVPI_CLIENTDIR=/tmp/devpi-client \
    DEVPI_MIRROR_CACHE_EXPIRY=86400 \
    BUILD_DEPS='\
        g++ \
        gcc \
        libffi-dev \
        py-pip \
        python3-dev'

COPY ["requirements.txt", "logger_cfg.json", "run.sh", "/"]

RUN apk add --no-cache python3 $BUILD_DEPS && \
    pip3 install -r /requirements.txt && \
    apk del $BUILD_DEPS && \
    rm /requirements.txt

VOLUME /mnt
EXPOSE 3141
USER 997

CMD "/run.sh"
