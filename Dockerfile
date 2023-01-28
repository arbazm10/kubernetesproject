FROM centos:latest
MAINTAINER arbazmtn@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
 ADD https://www.free-css.com/assets/files/free-css-templates/download/page283/lodge.zip  /var/www/html/
 WORKDIR  /var/www/html
 RUN unzip lodge.zip
 RUN cp -rvf lodge-html/* .
 RUN rm -rf lodge-html  lodge.zip
 CMD ["/usr/bin/httpd", "-D",   "FOREGROUND"]
 EXPOSE 80
