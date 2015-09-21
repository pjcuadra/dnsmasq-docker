FROM ubuntu:14.04

MAINTAINER Pedro Cuadra <pjcuadra@gmail.com>

RUN apt-get update && \
    apt-get upgrade -y 

RUN apt-get install -y vim

RUN apt-get update && \
    apt-get install -y dnsmasq

ADD files /etc

ENTRYPOINT ["/etc/dnsmasq.run"]
