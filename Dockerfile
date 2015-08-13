FROM ubuntu:15.04
MAINTAINER Huang Chengwei  <chengwei.huang@jimubox.com>

RUN cp /etc/apt/sources.list /etc/apt/sources.list.backup

ADD etc/apt/sources.list /etc/apt/sources.list

RUN apt-get update
RUN apt-get -y dist-upgrade
RUN apt-get install -y apt-utils apt-transport-https
