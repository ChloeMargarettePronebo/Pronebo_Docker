# Use a base image
FROM ubuntu:22.04

LABEL maintainer="margarette <qcmpronebo@tip.edu.ph>"

RUN apt update -y && \
    apt install -y nginx mariadb-server && \
    apt clean

EXPOSE 80 3306

# Start both services
CMD service mysql start && nginx -g 'daemon off;'
