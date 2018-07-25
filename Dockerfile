FROM jenkins/jenkins:lts

USER root

ENV TZ=Asia/Bangkok
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ARG user=root
ARG group=root
ARG uid=1000
ARG gid=1000

RUN curl -sSL https://get.docker.com/ | sh

RUN usermod -aG docker jenkins
