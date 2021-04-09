pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'bash ss-test.sh'
            }
        }
        stage('Build Docker images'){
            steps{
                sh 'bash push-to-docker.sh'
            }
        }   
    }
}
