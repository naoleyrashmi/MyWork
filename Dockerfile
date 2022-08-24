FROM centos:7

RUN rpm -Uvh https://yum.puppet.com/puppet6-release-el-7.noarch.rpm && \
    yum install -y puppet-agent && \
    yum install epel-release -y  && \
    yum update -y && \
    yum repolist && \
    yum install python-pip -y && \
    yum install postgresql  -y && \
    yum clean all

RUN pip install --upgrade pip 
RUN pip install awscli --upgrade --ignore-installed six 
RUN mkdir -p /root/.aws

#EXPOSE 9999 8080
COPY startup.sh  /tmp
RUN chmod +x /tmp/startup.sh
# COPY puppet.conf /etc/puppetlabs/puppet/puppet.conf
CMD ["/tmp/startup.sh", "run"]
