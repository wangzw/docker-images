#!/bin/sh

rpm -Uvh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
rpm -Uvh https://www.softwarecollections.org/en/scls/rhscl/devtoolset-3/epel-6-x86_64/download/rhscl-devtoolset-3-epel-6-x86_64.noarch.rpm

cat > /etc/yum.repos.d/epel-apache-maven.repo << EOF
[epel-apache-maven]
name=maven from apache foundation.
baseurl=http://repos.fedorapeople.org/repos/dchen/apache-maven/epel-6Server/x86_64/
enabled=1
skip_if_unavailable=1
gpgcheck=0
EOF

cat > /etc/yum.repos.d/epel-apache-maven-source.repo << EOF
[epel-apache-maven-source]
name=maven from apache foundation. - Source
baseurl=http://repos.fedorapeople.org/repos/dchen/apache-maven/epel-6Server/SRPMS
enabled=0
skip_if_unavailable=1
gpgcheck=0
EOF

yum clean all

#setup JAVA_HOME
cat <<EOF > /etc/profile.d/java.sh
#!/bin/sh
export JAVA_HOME=/etc/alternatives/java_sdk
EOF

