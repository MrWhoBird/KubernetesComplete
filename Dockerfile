FROM centos:latest
LABEL author="devops@devops.com"
RUN yum install httpd zip unzip wget -y
ADD https://www.free-css.com/assets/files/free-css-templates/page254/photogenic.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip photogenic.zip
RUN cp-rvf photogenic/*
RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 22 33
