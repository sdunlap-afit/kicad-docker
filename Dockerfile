FROM ubuntu:24.04

ARG DEBIAN_FRONTEND=noninteractive

# These things are needed:
#    sudo: So we have /etc/sudoers.d.
#    keyboard-configuration: Installation stalls without this.
#    software-properties-common: So add-apt-repository exists.
RUN apt update && \
    apt install -y sudo software-properties-common

# Install KiCad
RUN apt update && \
    add-apt-repository ppa:kicad/kicad-9.0-releases && \
    apt update && \
    apt install -y kicad



# # [Optional] Set the default user. Omit if you want to keep the default as root.
WORKDIR /home/ubuntu
USER ubuntu
