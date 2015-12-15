#!/bin/sh

yum install -y epel-release
yum clean all

#setup JAVA_HOME
cat <<EOF > /etc/profile.d/java.sh
#!/bin/sh
export JAVA_HOME=/etc/alternatives/java_sdk
EOF

curl -L "https://bintray.com/wangzw/rpm/rpm" -o /etc/yum.repos.d/bintray-wangzw-rpm.repo

