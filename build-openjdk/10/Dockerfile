FROM ubuntu:17.04

ADD build.sh /

sudo apt-get install \
  mercurial
# bootstrap JVM
  openjdk-9-jre-headless
# X11 libraries
  libx11-dev libxext-dev \
  libxrender-dev libxtst-dev libxt-dev \
# ALSA library
  libasound2-dev \
# FreeType 2 font engine
  libfreetype6-dev \
# CUPS library
  libcups2-dev \
# AOT
  libelf-dev

env LANG C

VOLUME ["/jdk"]

CMD ["sh", "/build.sh"]
