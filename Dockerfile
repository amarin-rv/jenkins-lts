FROM jenkins/jenkins:lts

USER root

RUN echo "Asia/Bangkok" | tee /etc/timezone
RUN dpkg-reconfigure --frontend noninteractive tzdata

ARG user=root
ARG group=root
ARG uid=1000
ARG gid=1000


RUN curl -sSL https://get.docker.com/ | sh


RUN usermod -aG docker jenkins
