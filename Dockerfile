# This is Josh's standard Centos7 base container.

# latest centos 7.4 as of 4-22-18: FROM centos:7.4.1708
FROM centos:7.5.1804

ENV TERM=xterm
ENV container docker

# Note nothing is version pinned, and yum update is used
# Thus this is not an idempotent container, build it a month from now and it
# will differ
RUN yum update -y
RUN yum install -y \ 
epel-release \ 
yum-tools \
which \
autofs \
nfs-utils \ 
deltarpm \
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

## not used: java-1.8.0-openjdk-headless
# need to add env vars

## not used ## yum install -y # mc git openssl nmap gcc

#### PYTHON 3.6
#RUN yum install -y python36-setuptools 
## note pip is already included python36-pip
#RUN easy_install-3.6 pip
#RUN pip3 -v
#RUN pip3 install --upgrade pip
#RUN pip3 install virtualenv
####

#### RUN yum clean all
