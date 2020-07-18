pipeline {
    agent none
    stages {
        stage('Test') {
            agent {
                dockerFile {
                     filename 'test.Dockerfile'
                     dir 'build'
                }
            }
            steps {
                sh 'composer install'
                sh 'vendor/bin/phpunit'
            }
        }
    }
}
