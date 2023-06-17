FROM php:7.2-apache

# Install Node.js and npm (required for browser-sync)
RUN apt-get update && apt-get install -y curl
RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs

WORKDIR /app
COPY . .

# Set the command to start the server
CMD php -S 0.0.0.0:$SERVER_PORT -t ./server && \
    echo "Server has been started on port $SERVER_PORT"