FROM ubuntu:20.04

LABEL maintainer="mannjaro <zk.takayuki@gmail.com>"

RUN apt update && apt upgrade -y &&\
    apt install openssh-server -y &&\
    mkdir /run/sshd

RUN sed -i 's/^#PermitEmptyPasswords no/PermitEmptyPasswords yes/' /etc/ssh/sshd_config
RUN sed -i 's/^#PasswordAuthetication/PasswordAuthetication/' /etc/ssh/sshd_config
RUN sed -i 's/^#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

RUN echo "root:password" | chpasswd

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]