FROM ubuntu
RUN sudo apt-get update -y
RUN sudo apt-get install -y apache2
RUN sudo systemctl start apache2
RUN sudo systemctl enable apache2
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
