FROM vcatechnology/linux-mint-ci:18
MAINTAINER VCA Technology <developers@vcatechnology.com>

# Install useful packages
RUN sudo apt-get install -y \
  python-pip \
  g++ \
  libtool \
  libtool-bin \
  realpath \
  debhelper \
  p7zip-full \
  doxygen \
  automake \
  graphviz \
  mscgen \
  check \
  valgrind \
  libcppunit-dev \
  libpcre3-dev \
  zlib1g-dev \
  libprotobuf-dev \
  pandoc \
  libqt4-dev \
  libqt4-opengl-dev \
  cmake \
  libpng12-dev \
  libeigen3-dev \
  yasm \
  libjpeg-turbo8-dev \
  libopencv-dev \
  libicu-dev \
  libboost-all-dev \
  libjansson-dev \
  libssl-dev \
  libntlm0-dev \
  libtinyxml-dev \
  libffi-dev \
  xzdec \
  autopoint \
  libsqlite3-dev \
  intltool \
  libsoup2.4-dev \
  libgmp-dev \
  nettle-dev \
  libx264-dev \
  liborc-0.4-dev \
  libgstreamer1.0-dev \
  libgstreamer-plugins-base1.0-dev \
  libgstreamer-plugins-good1.0-dev \
  libgstreamer-plugins-bad1.0-dev \
  gstreamer1.0-plugins-ugly \
  gstreamer1.0-libav \
  libsigc++-2.0-dev \
  libidn11-dev \
  libtasn1-6-dev \
  libgnutls-dev \
  libcurl4-gnutls-dev \
  libdbus-1-dev \
  libncurses5-dev \
  libncursesw5-dev \
  ncurses-term \
  libpopt-dev \
  libasound2-dev \
  libnl-3-dev \
  libnl-cli-3-dev \
  nodejs-legacy \
  npm \
  libpam0g-dev \
  python-dev \
  nasm \
  libavdevice-dev \
  libattr1-dev \
  libcap-dev \
  libmount-dev \
  libsystemd-dev \
  libudev-dev \
  libgudev-1.0-dev \
  subunit \
  python-pystache \
  python-requests \
  libbz2-dev \
  llvm

RUN sudo pip install --upgrade pip
RUN sudo pip install setuptools
RUN sudo pip install pytz cpplint
