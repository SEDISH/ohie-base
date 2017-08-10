#!/bin/bash

: ${NAGIOS_SERVER_IP=localhost}
: ${NAGIOS_SERVER_PORT=9090}

export NAGIOS_SERVER_IP
export NAGIOS_SERVER_PORT

/utils/replace-vars /etc/nagios/nrpe.cfg


