#!/bin/bash

exec /srv/cerebro/bin/cerebro \
  -Dhttp.port=${PORT:-9000} \
  -Dhttp.address=${BIND_HOST:-0.0.0.0} \
  -Dconfig.file=${CONFIG_PATH:-/srv/cerebro/conf/application.conf}
