FROM --platform=linux/amd64 ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y apache2 apache2-utils && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN echo 'ServerName localhost' >> /etc/apache2/apache2.conf
RUN echo '<h1>Hello from Docker Apache!</h1>' > /var/www/html/index.html

EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]




#terminal commands
docker-project$ docker run --platform linux/amd64 -p 80:80 httpd:2.4
docker run -p 8080:80 my-apache-image
