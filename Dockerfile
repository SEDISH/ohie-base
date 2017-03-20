#
# Ubuntu 14.04
#
# https://hub.docker.com/_/ubuntu/
#

# Pull base image.
FROM ubuntu:14.04

RUN apt-get update
RUN apt-get -y install gettext wget curl

COPY utils /utils
