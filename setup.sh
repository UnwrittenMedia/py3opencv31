#!/bin/bash

apt-get -y update
#DEBIAN_FRONTEND=noninteractive apt-get install  -y \
apt-get install  -y \
  build-essential \
  cmake \
  curl \
  git \
  libcurl4-openssl-dev \
  libeigen3-dev \
  libffi-dev \
  libfreetype6-dev \
  libtiff5-dev \
  libgdal-dev \
  libjpeg-dev \
  libjpeg8-dev \
  libjasper-dev \
  liblcms2-dev \
  libopenexr-dev \
  libtbb-dev \
  libvtk6-dev \
  libwebp-dev \
  nginx-full \
  nodejs \
  nodejs-legacy \
  npm \
  python-tk \
  python \
  python-dev \
  python3-dev \
  python3-numpy \
  python3-setuptools \
  python3-pip \
  python3-tk \
  qt5-default \
  s3cmd \
  tcl8.6-dev \
  tk8.6-dev \
  tmux \
  unzip \
  wget \
  zlib1g-dev \
  vim

#  libjpeg-turbo \
#  libjpeg-turbo8 \
#  libjpeg-turbo8-dev \



pip3 install -r /opt/setup/requirements3.txt

npm install -g grunt-cli

## Install OpenCV
##
## http://milq.github.io/install-opencv-ubuntu-debian/
##
## sudo apt-get install build-essential cmake
## sudo apt-get install qt5-default libvtk6-dev
## sudo apt-get install zlib1g-dev libjpeg-dev libwebp-dev libpng-dev libtiff5-dev libjasper-dev libopenexr-dev libgdal-dev
## sudo apt-get install libdc1394-22-dev libavcodec-dev libavformat-dev libswscale-dev libtheora-dev libvorbis-dev libxvidcore-dev libx264-dev yasm libopencore-amrnb-dev libopencore-amrwb-dev libv4l-dev libxine2-dev
## sudo apt-get install libtbb-dev libeigen3-dev
## sudo apt-get install python-dev python-tk python-numpy python3-dev python3-tk python3-numpy
## sudo apt-get install ant default-jdk
## sudo apt-get install doxygen
##
##

curl https://codeload.github.com/Itseez/opencv/zip/3.1.0 > /tmp/opencv.zip
rm -rf /opt/opencv
mkdir -p /opt/opencv
cd /opt/opencv
unzip /tmp/opencv.zip
cd opencv-3.1.0
mkdir -p build
cd build
cmake -DWITH_QT=ON -DWITH_OPENGL=ON -DFORCE_VTK=ON -DWITH_TBB=ON -DWITH_GDAL=ON -DWITH_XINE=ON -DBUILD_EXAMPLES=ON ..
make -j4
sudo make install
sudo ldconfig



## Clean up
apt-get clean
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
