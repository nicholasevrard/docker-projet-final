# Use the official WordPress image as the base
FROM wordpress:latest

# Set working directory
WORKDIR /var/www/html

# Copy custom plugins
COPY plugins/ wp-content/plugins/

# Copy custom themes
COPY themes/ wp-content/themes/

# Copy custom wp-config.php
COPY config/wp-config.php .

# Set permissions (optional, only if required)
# RUN chown -R www-data:www-data wp-content

# Expose the web server port (default is 80)
EXPOSE 80
