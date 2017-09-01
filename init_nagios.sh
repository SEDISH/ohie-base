#!/bin/bash

: ${NRPE_ALLOWED_HOST_IP=localhost}
: ${NRPE_SERVER_PORT=5666}

export NRPE_ALLOWED_HOST_IP
export NRPE_SERVER_PORT

/utils/replace-vars /etc/nagios/nrpe.cfg
