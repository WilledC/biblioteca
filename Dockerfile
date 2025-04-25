# Usa la imagen oficial de PHP con Apache
FROM php:8.2-apache

# Habilita módulos necesarios
RUN docker-php-ext-install pdo pdo_mysql mysqli
RUN a2enmod rewrite

# Copia los archivos de la aplicación
COPY app/ /var/www/html/

# Permisos para Apache
RUN chown -R www-data:www-data /var/www/html

EXPOSE 80