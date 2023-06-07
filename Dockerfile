FROM centos:latest
LABEL author="devops@devops.com"
RUN sudo yum install httpd zip unzip wget -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
WORKDIR /var/www/html/
RUN sudo unzip photogenic.zip
RUN sudo cp-rvf photogenic/*
RUN sudo rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 22