#Download base image ubuntu 16.04
FROM centos:latest

# Update Software repository
RUN yum update -y
RUN yum install -y vim screen telnet elinks java-1.8.0 wget
RUN wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN rpm -ivh epel-release-latest-7.noarch.rpm
RUN yum install -y httpd
RUN echo "Hi, This is Arulraj Anto, test page 1" > /var/www/html/index.html
CMD service httpd start
CMD chkconfig httpd on

# Binds to port 8080
EXPOSE  8080
