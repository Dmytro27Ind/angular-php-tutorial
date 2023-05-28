FROM php
WORKDIR /app
COPY . .
ENV PORT=3000
EXPOSE $PORT

CMD echo "Server has been started on port $PORT" && \
    php -S 0.0.0.0:$PORT -t /app