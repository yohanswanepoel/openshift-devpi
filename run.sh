#!/bin/sh
set -ex

if [ ! -f "${DEVPI_SERVERDIR}/.serverversion" ]; then
  devpi-server --serverdir=${DEVPI_SERVERDIR} --init
fi

devpi-server \
  --logger-cfg=/logger_cfg.json \
  --serverdir=${DEVPI_SERVERDIR} \
  --mirror-cache-expiry=${DEVPI_MIRROR_CACHE_EXPIRY} \
  --host 0.0.0.0 \
  --port 3141
