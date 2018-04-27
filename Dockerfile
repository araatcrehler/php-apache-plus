FROM ubuntu:16.04

RUN apt-get update && apt-get install -y curl unzip libapr1 libaprutil1 libaprutil1-ldap libapr1-dev libaprutil1-dev liblua5.2-0 libnghttp2-14 libpcre++-dev libssl1.0.0 libxml2 && apt-get clean

RUN apt-get update && apt-get install -y apache2 php7.0 libapache2-mod-php7.0 php7.0-curl php7.0-dom php7.0-gd php7.0-mbstring php7.0-mysql php7.0-xml php7.0-zip && apt-get clean

RUN apt-get update && apt-get install -y default-jre wget imagemagick php-imagick && apt-get clean

RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
RUN apt-get update && apt-get install -y google-chrome-stable xvfb && apt-get clean

RUN curl -LsS https://codeception.com/codecept.phar -o /usr/local/bin/codecept
RUN chmod a+x /usr/local/bin/codecept
