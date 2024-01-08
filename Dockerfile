FROM ubuntu
<<<<<<< HEAD
RUN apt update
RUN apt-get install apache2 -y
=======
RUN apt-get update
RUN apt-get install -y apache2
>>>>>>> ee7ca40e83d7cc3488d15b96f068766210246d1c
ADD . /var/www/html
EXPOSE 80
ENTRYPOINT apachectl -D FOREGROUND
