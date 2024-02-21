FROM php:7.4-cli

# Install dependencies
RUN docker-php-ext-install mysqli

# Set the working directory
WORKDIR /var/www/html/demo

# Copy application files
COPY . /var/www/html/demo/

# Expose port 8000 for PHP server
EXPOSE 8000

# Start PHP server
CMD ["php", "-S", "0.0.0.0:8000", "-t", "/var/www/html/demo"]
