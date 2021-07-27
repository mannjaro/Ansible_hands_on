FROM python:3.9.6-slim-buster

LABEL maintainer="mannjaro <zk.takayuki@gmail.com>"

ENV ANSIBLE_HOST_KEY_CHECKING False

RUN apt update && apt upgrade -y &&\
    apt install openssh-client sshpass -y &&\
    pip install ansible