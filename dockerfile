FROM ubuntu:16.04
RUN apt-get update  
RUN apt-get install apache2 -y
RUN apt-get clean 
RUN rm -rf /var/lib/apt/lists/*
COPY index.html /var/www/html/index.html
ADD apache2.sh /apache2.sh
EXPOSE 80
CMD ["/bin/bash","/apache2.sh"]


