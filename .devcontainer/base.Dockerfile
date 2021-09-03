FROM ubuntu:21.04

ENV DEBIAN_FRONTEND noninteractive
ENV EDITOR code

RUN apt update
RUN apt install -y \
    apt-utils \
    sudo \
    git \
    gnupg

RUN apt install -y \
    texlive-full

RUN useradd -ms /bin/bash -G sudo vscode
RUN echo "vscode ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/vscode
RUN chmod 0440 /etc/sudoers.d/vscode

USER vscode