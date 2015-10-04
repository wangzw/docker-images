#!/bin/sh

updatedb

#setup nproc
sed -e 's|1024|65535|' -i /etc/security/limits.d/90-nproc.conf

#setup nfile

if [ -z "`grep "soft nofile 65535" /etc/security/limits.conf`" ]; then
cat <<EOF >> /etc/security/limits.conf
* soft nofile 65535
* hard nofile 65535
EOF
fi

#setup core
if [ -z "`grep "soft core unlimited" /etc/security/limits.conf`" ]; then
cat <<EOF >> /etc/security/limits.conf
* soft core unlimited
* hard core unlimited
EOF
fi

useradd -u 1000 wangzw

#grant root privilege
cat <<EOF > /etc/sudoers.d/wangzw
wangzw  ALL=(ALL)       NOPASSWD: ALL
EOF

