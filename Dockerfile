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
  alsa-utils \
  automake \
  autopoint \
  bc \
  bison \
  check \
  clang-format \
  clang-tidy \
  cmake \
  comerr-dev \
  debhelper \
  dialog \
  doxygen \
  e2fslibs-dev \
  flex \
  g++ \
  gawk \
  gdisk \
  gperf \
  gnu-efi \
  graphviz \
  gsoap \
  gstreamer1.0-alsa \
  gstreamer1.0-libav \
  gstreamer1.0-plugins-bad \
  gstreamer1.0-plugins-good \
  gstreamer1.0-plugins-ugly \
  gstreamer1.0-tools \
  intltool \
  libaa-bin \
  libaa1-dev \
  libasound2-dev \
  libasm-dev \
  libattr1-dev \
  libavdevice-dev \
  libboost-all-dev \
  libblkid-dev \
  libbz2-dev \
  libcap-dev \
  libcap-ng-dev \
  libcppunit-dev \
  libcurl4-gnutls-dev \
  libdbus-1-dev \
  libdw-dev \
  libeigen3-dev \
  libelf-dev \
  libffi-dev \
  libisl-dev \
  libgcrypt11-dev \
  libgmp-dev \
  libgnutls28-dev \
  libgpg-error-dev \
  libgstreamer-plugins-bad1.0-dev \
  libgstreamer-plugins-base1.0-dev \
  libgstreamer-plugins-good1.0-dev \
  libgstreamer1.0-dev \
  libgsoap-dev \
  libgudev-1.0-dev \
  libicu-dev \
  libidn11-dev \
  libjansson-dev \
  libjpeg-turbo8-dev \
  libkrad-dev \
  libkrb5-dev \
  libmount-dev \
  libmozjs-24-dev \
  libmpc-dev \
  libmpfr-dev \
  libncurses5-dev \
  libncursesw5-dev \
  libndp-dev \
  libnl-3-dev \
  libnl-cli-3-dev \
  libnspr4-dev \
  libntlm0-dev \
  libopencv-dev \
  liborc-0.4-dev \
  libpam0g-dev \
  libpciaccess-dev \
  libpcre3-dev \
  libpng12-dev \
  libpopt-dev \
  libprotobuf-dev \
  libqt4-dev \
  libqt4-opengl-dev \
  librapidxml-dev \
  libsigc++-2.0-dev \
  libsoup2.4-dev \
  libsqlite3-dev \
  libssl-dev \
  libsubunit-dev \
  libsystemd-dev \
  libtasn1-6-dev \
  libtinyxml-dev \
  libtool \
  libtool-bin \
  libverto-dev \
  libudev-dev \
  libusb-1.0-0-dev \
  libx264-dev \
  llvm \
  llvm-dev \
  mscgen \
  nasm \
  ncurses-term \
  nettle-dev \
  nodejs-legacy \
  npm \
  p7zip-full \
  pandoc \
  python-coverage \
  python-dev \
  python-pip \
  python-pystache \
  python-requests \
  qemu \
  rapidjson-dev \
  realpath \
  ss-dev \
  stress \
  subunit \
  unrar-free \
  uuid-runtime \
  vde2 \
  valgrind \
  xzdec \
  yasm \
  zlib1g-dev

RUN pip install --user --upgrade pip
RUN pip install --user setuptools
RUN pip install --user pytz cpplint sseclient backports.functools_lru_cache
