FROM ubuntu
RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get install –y apache2-utils 
ADD . /var/www/html
EXPOSE 80
ENTRYPOINT apachectl -D FOREGROUND
