apk add --no-cache autoconf libzip-dev g++ make libzip-dev zlib-dev libpng-dev
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer install
vendor/bin/phpunit
