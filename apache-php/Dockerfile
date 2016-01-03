FROM php:7-apache
# Install modules
RUN apt-get update && apt-get install -y \
        libldap2-dev && \
        apt-get clean \
    && docker-php-ext-configure ldap --with-libdir=/lib/x86_64-linux-gnu/ \
    && docker-php-ext-install ldap \
    && docker-php-ext-enable ldap

CMD ["apache2-foreground"]
