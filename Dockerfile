FROM centos

MAINTAINER rashminaoley

RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
RUN curl -O https://downloads.apache.org/tomcat/tomcat-8/v8.5.82/bin/apache-tomcat-8.5.82.tar.gz
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat*/* /opt/tomcat/.
RUN cd /etc/yum.repos.d/
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN yum -y install java
RUN java -version

WORKDIR /opt/tomcat/webapps
RUN curl -O -L https://github.com/AKSarav/SampleWebApp/raw/master/dist/SampleWebApp.war

EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
#COPY startup.sh  /tmp
#RUN chmod +x /tmp/startup.sh
#CMD ["/tmp/startup.sh", "run"]
