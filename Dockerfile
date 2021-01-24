FROM centos:latest
MAINTAINER dittojoseph07@gmail.com
RUN yum install -y httpd \
  zip \
 unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page263/shiphile.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip shiphile.zip
RUN cp -rvf shiphile/* .
RUN rm -rf shiphile shiphile.zip 
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
