# This is Josh's standard Centos8 base container.

FROM centos:8

ENV TERM xterm-256color
#ENV CONTAINER docker

# Note nothing is version pinned, and yum update is used
# Thus this is not an idempotent container, build it a month from now and it
# will differ
RUN yum -y update yum ca-certificates
RUN yum -y install epel-release
RUN yum -y makecache
RUN yum -y update
RUN yum -y install \
which \
autofs \
bash-completion \
nfs-utils \
ca-certificates \
man \
nano \
less \
expect \
curl \
wget \
ftp \
jq \
openssh-clients \
net-tools \
traceroute \
tcping \
iproute \
bind-utils \
unzip \
zip \
bzip2

# mtr # combines traceroute and pings nodes along route

# Default to UTF-8 file.encoding
ENV LANG en_US.UTF-8
# above is default in centos8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

## not used ## yum install -y # mc git openssl nmap gcc

#### PYTHON 3.6
RUN yum -y install python36
## note pip is already included python36-pip
RUN pip3 install --upgrade pip
RUN pip3 install virtualenv
####

#### JAVA
# https://phoenixnap.com/kb/install-java-on-centos
RUN yum -y install java-11-openjdk-headless
# yum -y install java-1.8.0-openjdk-headless
RUN java -version
## Verify this is the right version
ENV JAVA_VERSION 11.0.5
## need to add env vars in app definition such as java_args 
## note, use: java -XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap
## https://dzone.com/articles/running-a-jvm-in-a-container-without-getting-kille
#### 

# commented out since this is a dev container and I'll be
# exec'ing into it and doing things
# RUN rm -rf /var/cache/yum
