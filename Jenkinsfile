pipeline {
    agent none
    stages {
        stage('Test') {
            agent {
                docker { image 'php:7.4-alpine' }
            }
            steps {
                sh 'apk add --no-cache autoconf libzip-dev g++ make libzip-dev zlib-dev libpng-dev'
                sh 'curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer'
                sh 'composer install'
                sh 'vendor/bin/phpunit'
            }
        }
    }
}
