FROM centos:7

MAINTAINER Zhanwei Wang <wangzw@wangzw.org>

COPY install-repo.sh /tmp/install-repo.sh
COPY setup-system.sh /tmp/setup-system.sh

RUN /tmp/install-repo.sh

RUN yum install -y man passwd sudo tar which git mlocate make links \
 autoconf automake libtool m4 gcc gcc-c++ bison flex lcov \
 libuuid-devel krb5-devel libgsasl-devel expat-devel libxml2-devel \
 perl-ExtUtils-Embed pam-devel python-devel protobuf-devel \
 bzip2-devel openssl-devel fuse-devel readline-devel gdb python-pip \
 maven apache-ivy java-1.7.0-openjdk-devel && \
 yum clean all

RUN pip install Glances logutils argparse

RUN curl -L "https://cmake.org/files/v3.3/cmake-3.3.2-Linux-x86_64.tar.gz" -o cmake.tar.gz && \
 tar -xzf cmake.tar.gz && \
 cp -r cmake-3.3.2-Linux-x86_64/* /usr/ && \
 rm -rf cmake-3.3.2-Linux-x86_64 && \
 rm -rf cmake.tar.gz

RUN /tmp/setup-system.sh

WORKDIR /home/wangzw/

USER wangzw
CMD bash
