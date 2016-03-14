FROM jenkins:1.642.2

MAINTAINER Zhanwei Wang <wang@hashdata.cn>

USER root

RUN \
  apt-get update \
  && apt-get -y install apt-transport-https ca-certificates \
  && echo 'deb https://apt.dockerproject.org/repo debian-jessie main' > /etc/apt/sources.list.d/docker.list \
  && apt-get update \
  && apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D \
  && apt-get -y --force-yes install docker-engine \
  && apt-get clean

USER jenkins

