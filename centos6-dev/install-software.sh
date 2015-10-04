#!/bin/sh

#install protobuf
pushd /tmp
curl -s -k -L "https://github.com/google/protobuf/releases/download/v2.5.0/protobuf-2.5.0.tar.bz2" -o /tmp/protobuf-2.5.0.tar.bz2
tar -xjf /tmp/protobuf-2.5.0.tar.bz2
cd protobuf-2.5.0 && ./configure && make -j8 && make install
rm -rf protobuf-2.5.0*
popd

#install parallel-ssh
pushd /tmp
curl -s -L "https://parallel-ssh.googlecode.com/files/pssh-2.3.1.tar.gz" -o /tmp/pssh-2.3.1.tar.gz
tar -xzf /tmp/pssh-2.3.1.tar.gz
cd pssh-2.3.1 && python setup.py install; cd -
rm -rf pssh-2.3.1*
popd

