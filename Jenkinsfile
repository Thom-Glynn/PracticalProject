pipeline {
  agent any
  stages {
    stage('Build and test') {
      steps {
        sh './scripts/pytestVM_ssh.sh'
      }
    }
    stage('login into dockerhub and push') {
      steps {
        sh './scripts/docker_push.sh'
      }
    }
    stage('deploy with kubernetes') {
      steps {
        sh './scripts/deploy.sh'
      }
    }
  }
}
