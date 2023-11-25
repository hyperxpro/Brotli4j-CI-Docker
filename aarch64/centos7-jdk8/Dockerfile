FROM arm64v8/centos:centos7.9.2009

# Update as we need to use the vault now.
#RUN sed -i -e 's/^mirrorlist/#mirrorlist/g' -e 's/^#baseurl=http:\/\/mirror.centos.org\/centos\/$releasever\//baseurl=https:\/\/vault.centos.org\/7.9.2009\//g' /etc/yum.repos.d/CentOS-Base.repo

# install dependencies
RUN yum install -y \
 apr-devel \
 autoconf \
 automake \
 git \
 glibc-devel \
 libtool \
 lksctp-tools \
 lsb-core \
 make \
 openssl-devel \
 tar \
 unzip \
 wget \
 zip

# Java 8
RUN rpm --import https://yum.corretto.aws/corretto.key
RUN curl -L -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo
RUN yum install -y java-1.8.0-amazon-corretto-devel

# Cleanup
RUN yum clean all && rm -rf /var/cache/yum
