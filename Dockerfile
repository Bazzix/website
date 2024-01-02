FROM ubuntu
RUN apt-get update
RUN apt-get install -y apache2
RUN systemctl start apache2
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
