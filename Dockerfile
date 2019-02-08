FROM amazonlinux:2

RUN yum update -y
RUN amazon-linux-extras install docker
RUN amazon-linux-extras install ecs
RUN amazon-linux-extras install testing
RUN amazon-linux-extras install vim
RUN yum install -y git
RUN yum install -y zsh

WORKDIR /root/
COPY dotfiles/ ./
