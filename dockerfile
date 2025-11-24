FROM ubuntu:24.04

# Install nginx
RUN apt update && apt install -y nginx

# Copy HTML files
COPY . /var/www/html

# Expose port 80
EXPOSE 80

# Run nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
