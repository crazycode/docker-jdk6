FROM debian:wheezy

MAINTAINER crazycode

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
   && apt-get install -y sun-java6-jdk

RUN update-java-alternatives -s java-6-sun

# Cleanup test
RUN apt-get -qq clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /root
CMD ["/bin/bash"]
