FROM vcatechnology/linux-mint-ci
MAINTAINER VCA Technology <developers@vcatechnology.com>

# Build-time metadata as defined at http://label-schema.org
ARG PROJECT_NAME
ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.name="$PROJECT_NAME" \
      org.label-schema.description="An up-to-date Linux Mint image with VCA tool chain packages" \
      org.label-schema.url="https://www.linuxmint.com/" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/vcatechnology/docker-linux-mint-toolchain" \
      org.label-schema.vendor="VCA Technology" \
      org.label-schema.version=$VERSION \
      org.label-schema.license=MIT \
      org.label-schema.schema-version="1.0"

# Install useful packages
RUN sudo vca-install-package \
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
  libmozjs-24-dev \
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
  llvm \
  llvm-dev \
  clang-format \
  clang-tidy \
  libgpg-error-dev \
  libgcrypt11-dev \
  libndp-dev \
  libnspr4-dev \
  unrar-free \
  bison \
  flex

RUN sudo pip install --upgrade pip
RUN sudo pip install setuptools
RUN sudo pip install pytz cpplint
