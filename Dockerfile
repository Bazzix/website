FROM ubuntu
RUN sudo apt-get update
RUN sudo apt-get install -y apache2
RUN sudo systemctl start apache2
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
