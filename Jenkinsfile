pipeline {
    agent none
    stages {
        stage('Test') {
            agent {
                docker { image 'php:7.4-alpine' }
            }
            steps {
                sh 'build/test.sh'
            }
        }
    }
}
