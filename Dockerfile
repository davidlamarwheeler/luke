FROM amazonlinux:2

RUN yum update -y
RUN amazon-linux-extras install docker
RUN amazon-linux-extras install ecs
RUN amazon-linux-extras install testing
RUN amazon-linux-extras install vim
RUN yum install -y git
RUN yum install -y zsh

RUN groupadd jedi
RUN useradd -g jedi luke

WORKDIR /home/luke/
COPY dotfiles/ ./
RUN chown -R luke:jedi .
RUN chmod -R 755 .zsh/

USER luke:jedi
SHELL ["/usr/bin/zsh", "-c"]
