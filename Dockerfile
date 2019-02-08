FROM amazonlinux:2

COPY dotfiles/.* ~/

RUN yum update -y
RUN yum install -y git
RUN amazon-linux-extras install docker
