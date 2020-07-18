pipeline {
    agent none
    stages {
        stage('Test') {
            agent {
                dockerfile {
                     filename 'test.Dockerfile'
                     dir 'build'
                }
            }
            steps {
                sh 'composer install'
                sh 'cp .env.example .env'
                sh 'php artisan key:generate'
                sh 'vendor/bin/phpunit'
            }
        }
    }
}
