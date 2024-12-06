# Start from the official WordPress image
FROM wordpress:latest

# Set environment variables
ENV WORDPRESS_DB_HOST=db
ENV WORDPRESS_DB_USER=exampleuser
ENV WORDPRESS_DB_PASSWORD=examplepass
ENV WORDPRESS_DB_NAME=exampledb

# Copy custom plugins, themes, or configurations (optional)
# Assuming you have a folder structure like:
# ./plugins/
# ./themes/
# ./config/
COPY plugins/ /var/www/html/wp-content/plugins/
COPY themes/ /var/www/html/wp-content/themes/
COPY config/wp-config.php /var/www/html/wp-config.php

# Set permissions (if needed)
RUN chown -R www-data:www-data /var/www/html/wp-content

# Expose port 80 (default for WordPress)
EXPOSE 80

# Run the default WordPress entrypoint
CMD ["apache2-foreground"]
