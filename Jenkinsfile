pipeline {
    agent none
    stages {
        stage('Test') {
            agent {
                docker { image 'php:7.4-alpine' }
            }
            steps {
                apk add --no-cache autoconf libzip-dev g++ make libzip-dev zlib-dev libpng-dev
                docker-php-ext-install bcmath zip gd
                docker-php-ext-enable redis
                curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
                composer install
                vendor/bin/phpunit
            }
        }
    }
}
