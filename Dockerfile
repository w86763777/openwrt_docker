FROM ubuntu:18.04

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential ccache ecj fastjar file g++ gawk \
    gettext git java-propose-classpath libelf-dev libncurses5-dev \
    libncursesw5-dev libssl-dev python python2.7-dev python3 unzip wget \
    python3-distutils python3-setuptools rsync subversion swig time \
    xsltproc zlib1g-dev \
    tmux htop vim zip unzip sudo openssh-server \
    && rm -rf /var/lib/apt/lists/*

RUN useradd --system --create-home --home-dir /home/openwrt --shell /bin/bash \
    --groups sudo --password openwrt openwrt
    
USER openwrt
WORKDIR /home/openwrt