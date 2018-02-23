# This is Josh's normal centos7 base container. It has a few common utilities and python 3.4.
# Note version pinning. This is for reproducability in the future. 
# If this dockerfile is old, then it will create a container with old utilties.

# latest centos 7.4 as of 2-22-18
FROM centos:7.4.1708

ENV term=xterm

RUN yum update -y
RUN yum install -y epel-release yum-tools deltarpm ca-certificates
RUN yum install -y \
vim-enhanced-7.4.160-2.el7.x86_64 \ 
nano-2.3.1-10.el7.x86_64 \
less-458-9.el7.x86_64 \
make-3.82-23.el7 \ 
expect-5.45-14.el7_1 \ 
curl-7.29.0-42.el7.x86_64 \
wget-1.14-15.el7_4.1.x86_64 \
jq-1.5-1.el7.x86_64 \ 
openssh-clients-7.4p1-13.el7_4 \
net-tools-2.0-0.22.20131004git.el7.x86_64 \
traceroute-2.0.22-2.el7.x86_64 \
iproute-3.10.0-87.el7.x86_64 \
bind-utils-9.9.4-51.el7_4.2  \
unzip-6.0-16.el7.x86_64 \
zip-3.0-11.el7.x86_64 \
bzip2-1.0.6-13.el7.x86_64 \
nfs-utils-1.3.0-0.48.el7.x86_64 \
python34-setuptools-19.2-3.el7.noarch \
python34-pip-8.1.2-5.el7.noarch 

## not used yum install -y # mc git nmap gcc-4.8.5-16.el7_4.1 

RUN pip3 install --upgrade pip
RUN pip3 install virtualenv

#### RUN yum clean all

