# A basic apache server with PHP7
FROM debian:stretch

MAINTAINER Sascha Habelt version: 0.1

RUN apt-get -y update
RUN apt-get install -y apache2 php php-mcrypt php-mysql php-curl php-fpm
RUN apt-get -y clean
RUN rm -rf /var/lib/apt/lists/*

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_RUN_DIR /var/run/apache2
ENV APACHE_PID_FILE $APACHE_RUN_DIR/apache2.pid
ENV APACHE_LOCK_DIR /var/lock/apache2

RUN mkdir -p $APACHE_RUN_DIR $APACHE_LOCK_DIR $APACHE_LOG_DIR

EXPOSE 80

CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
