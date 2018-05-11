FROM ubuntu:16.04

RUN apt-get update && apt-get install -y libapr1 libaprutil1 libaprutil1-ldap libapr1-dev libaprutil1-dev liblua5.2-0 libnghttp2-14 libpcre++-dev libssl1.0.0 libxml2

RUN apt-get update && apt-get install -y curl apache2 php7.0 libapache2-mod-php7.0

RUN apt-get update && apt-get install -y php7.0-curl php7.0-dom php7.0-gd php7.0-mbstring php7.0-mysql php7.0-xml php7.0-zip

RUN apt-get update && apt-get install -y imagemagick php-imagick wget unzip

#RUN apt-get update && apt-get install -y default-jre

# RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
# RUN sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
# RUN apt-get update && apt-get install -y google-chrome-stable

RUN curl -LsS https://codeception.com/codecept.phar -o /usr/local/bin/codecept
RUN chmod a+x /usr/local/bin/codecept
