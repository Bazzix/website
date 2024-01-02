FROM ubuntu
RUN apt-get update
RUN apt-get install -y apache2
ADD . /var/www/html
EXPOSE 80
ENTRYPOINT apachectl -D FOREGROUND
