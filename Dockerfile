FROM centos:latest
MAINTAINER arbazmtn@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
 ADD https://www.free-css.com/assets/files/free-css-templates/download/page258/loxury.zip  /var/www/html/
 WORKDIR  /var/www/html
 RUN unzip loxury.zip
 RUN cp -rvf loxury/* .
 RUN rm -rf loxury  loxury.zip
 CMD ["/usr/bin/httpd", "-D",   "FOREGROUND"]
 EXPOSE 80
