FROM centos:7

RUN yum update -y
RUN yum install -y epel-release 
RUN yum install -y ca-certificates vim curl nano jq net-tools traceroute bind-utils unzip zip bzip2 yum-utils python34-setuptools python34-pip

RUN pip3 install --upgrade pip
RUN pip3 install virtualenv

RUN yum clean packages

