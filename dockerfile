FROM ubuntu:18.04
MAINTAINER gustavodias@ufg.br 

RUN build='qt5-default libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev gstreamer1.0-plugins-bad libopencv-dev libeigen3-dev libglew-dev libglu1-mesa-dev 
libosmesa6-devbuild-essential git cmake autoconf ca-certificates unzip' \
    && set -x \
    && apt-get update \
    && apt-get install -y $buildDeps --no-install-recommends \
    && apt-get install -y 
    && make \
    && make install \
    && cd / \
    && git clone https://gitlab.liu.se/ida-rtslab/public-code/2019_mrleo_server.git \
    && cd 2019_mrleo_server \
    && qmake && make
  

