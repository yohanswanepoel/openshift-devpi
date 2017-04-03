#!/bin/sh
set -ex

ARGS="--logger-cfg=/logger_cfg.json \
      --serverdir=${DEVPI_SERVERDIR} \
      --host 0.0.0.0 \
      --port 3141 \
      --mirror-cache-expiry=${DEVPI_MIRROR_CACHE_EXPIRY}"

if [ ! -f "${DEVPI_SERVERDIR}/.serverversion" ]; then
  devpi-server $ARGS --init
  devpi-server $ARGS --start
  sleep 1
  devpi use http://localhost:3141
  devpi login root --password=''
  devpi user -m root password="${DEVPI_PASSWORD}"
  devpi index -y -c public pypi_whitelist='*'
  devpi-server $ARGS --stop
fi

devpi-server $ARGS
