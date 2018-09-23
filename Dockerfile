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

# Default to UTF-8 file.encoding
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8 

## not used ## yum install -y # mc git openssl nmap gcc

#### PYTHON 3.6
#RUN yum install -y python36-setuptools 
## note pip is already included python36-pip
#RUN easy_install-3.6 pip
#RUN pip3 -v
#RUN pip3 install --upgrade pip
#RUN pip3 install virtualenv
####

#### JAVA 1.8
# yum install -y java-1.8.0-openjdk-headless
# RUN java -version
## Verify this is the right version
#ENV JAVA_VERSION 8u181
## need to add env vars in app definition such as java_args 
## note, use: java -XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap
## https://dzone.com/articles/running-a-jvm-in-a-container-without-getting-kille
#### 


#### RUN yum clean all
