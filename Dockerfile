FROM ubuntu:16.04
MAINTAINER danni affolter "daffolte@starbucks.com"

RUN apt-get update && apt-get install nginx -y

RUN echo "hello from danni's container..." > /var/www/html/index.html

#ONBUILD
#ADD
#COPY
#WORKDIR

#CMD
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]

EXPOSE 80 
