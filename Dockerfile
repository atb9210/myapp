FROM dunglas/frankenphp

WORKDIR /app

COPY . .

RUN composer install --no-dev --optimize-autoloader

EXPOSE 80

CMD ["php", "artisan", "serve", "--host=0.0.0.0", "--port=80"]
