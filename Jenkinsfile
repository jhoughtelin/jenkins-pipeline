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
                sh 'vendor/bin/phpunit'
            }
        }
    }
}
