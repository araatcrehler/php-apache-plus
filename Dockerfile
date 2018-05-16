FROM ubuntu:16.04

RUN apt-get update && apt-get install -y libapr1 libaprutil1 libaprutil1-ldap libapr1-dev libaprutil1-dev liblua5.2-0 libnghttp2-14 libpcre++-dev libssl1.0.0 libxml2

RUN apt-get update && apt-get install -y curl apache2 php7.0 libapache2-mod-php7.0

RUN apt-get update && apt-get install -y php7.0-curl php7.0-dom php7.0-gd php7.0-mbstring php7.0-mysql php7.0-xml php7.0-zip

RUN apt-get update && apt-get install -y imagemagick php-imagick wget unzip
