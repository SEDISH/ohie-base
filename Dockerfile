#
# Ubuntu 14.04
#
# https://hub.docker.com/_/ubuntu/
#

# Pull base image.
FROM ubuntu:14.04

RUN apt-get update
RUN apt-get -y install gettext wget curl
RUN apt-get install -y nagios-plugins nagios-nrpe-server

COPY nrpe.cfg /etc/nagios/nrpe.cfg
COPY utils /utils

ADD cmd.sh cmd.sh
RUN chmod +x cmd.sh
RUN /cmd.sh

