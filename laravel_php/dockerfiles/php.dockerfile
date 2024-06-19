# Use PHP 8.3 FPM on Alpine Linux
FROM php:8.3-fpm-alpine

# Set the working directory to where Laravel files will be mapped
WORKDIR /var/www/html

# Copy the contents of the src/laravel directory to the working directory
COPY src/laravel .

# Install necessary PHP extensions
RUN docker-php-ext-install pdo pdo_mysql

# Create a group and user for running Laravel
RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel

# # Ensure the user has ownership of the necessary directories
# RUN chown -R laravel:laravel /var/www/html

# Set write permissions for the Laravel storage and bootstrap/cache directories
RUN chmod -R 775 /var/www/html/storage /var/www/html/bootstrap/cache

# Switch to the Laravel user
USER laravel
