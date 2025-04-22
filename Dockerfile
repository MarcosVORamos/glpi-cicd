# Usa imagem oficial do PHP com Apache
FROM php:8.3-apache

# Instala extensões necessárias para o GLPI
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libzip-dev \
    unzip \
    libicu-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd mysqli zip opcache intl

# Habilita o módulo rewrite do Apache
RUN a2enmod rewrite

# Copia os arquivos do GLPI para o diretório do Apache
COPY glpi/ /var/www/html/

# Ajusta permissões
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Expõe a porta padrão do Apache
EXPOSE 80
