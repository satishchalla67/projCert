# Use the httpd image as base
FROM httpd:2.4

# Copy the website content to the Apache server's document root
COPY . /usr/local/apache2/htdocs/

# Expose port 80 to the outside world
EXPOSE 80

# Start the Apache server
CMD ["httpd", "-D", "FOREGROUND"]

