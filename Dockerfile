FROM php:7.1-apache-jessie

COPY index.php /var/www/html/index.php

RUN chown -R www-data:www-data /var/www/

EXPOSE 80

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
