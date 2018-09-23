# This is Josh's normal centos7 base container. It has a few common utilities and python 3.4.
# Note version pinning. This is for reproducability in the future. 
# The container is not yet fully setup with version pinning, it's just half way there
#    such as yum update is still used, which does not allow a container to be idempotent
# If this dockerfile is old, then it will create a container with old utilties.

# latest centos 7.4 as of 2-22-18
# not using the latest centos:7
FROM centos:7.4.1708

ENV TERM=xterm
ENV container docker

RUN yum update -y
RUN yum install -y epel-release 

# Useful to have a yum cache while in development, not often used in production though
RUN yum makecache fast

# During development I wanted the latest versions of these, so I'm not version pinning them
# but in production use I would. The certs might be an exception.
RUN yum install -y yum-tools autofs nfs-utils deltarpm ca-certificates man

# Best practice is to version pin everything, so each build of the container is the same, which helps with 
# debugging and such
RUN yum install -y \
nano-2.3.1-10.el7.x86_64 \
less-458-9.el7.x86_64 \
expect-5.45-14.el7_1 \ 
curl-7.29.0-42.el7.x86_64 \
wget-1.14-15.el7_4.1.x86_64 \
ftp-0.17-67.el7 \
jq-1.5-1.el7.x86_64 \ 
openssh-clients-7.4p1-13.el7_4 \
net-tools-2.0-0.22.20131004git.el7.x86_64 \
traceroute-2.0.22-2.el7.x86_64 \
iproute-3.10.0-87.el7.x86_64 \
bind-utils-9.9.4-51.el7_4.2  \
unzip-6.0-16.el7.x86_64 \
zip-3.0-11.el7.x86_64 \
bzip2-1.0.6-13.el7.x86_64 \
autofs-5.0.7-70.el7_4.1  

## not used ## yum install -y # mc git openssl nmap gcc-4.8.5-16.el7_4.1

#### PYTHON, not using version pinning at this time
RUN yum install -y python34-setuptools python34-pip
RUN pip3 install --upgrade pip
RUN pip3 install virtualenv
####

#### JAVA 1.8
# yum install -y java-1.8.0-openjdk.x86_64
#### 

# Since I'm using this container for development I'm not going to clean up yum,
# but in production use I would
# RUN yum clean all

