FROM ubuntu:16.04
WORKDIR /usr/src/app
RUN apt-get update
RUN apt-get install -y locales python-software-properties software-properties-common && apt-get update && apt-get -qq upgrade
RUN rm /etc/timezone && echo $MY_TZ >> /etc/timezone && locale-gen fr_FR.UTF-8 && LC_ALL=fr_FR.UTF-8
RUN LC_ALL=fr_FR.UTF-8 add-apt-repository ppa:ondrej/mysql-5.6 -y && apt-get update
RUN apt-get install -y --force-yes curl zip git php7.0 php7.0-cli php7.0-xml php7.0-zip
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
EXPOSE 8080
# Bundle app source
COPY . .
RUN composer install
CMD php -S 0.0.0.0:8080 -t /usr/src/app/web