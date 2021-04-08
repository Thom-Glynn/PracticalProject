pipeline {
  agent any
  stages {
    stage('Build and test') {
      steps {
        sh "chmod +x -R ${env.WORKSPACE}"
        sh './scripts/pytestVM_ssh.sh'
      }
    }
    stage('login into dockerhub and push') {
      steps {
        sh "chmod +x -R ${env.WORKSPACE}"
        sh './scripts/docker_push.sh'
      }
    }
    stage('deploy with kubernetes') {
      steps {
        sh "chmod +x -R ${env.WORKSPACE}"
        sh './scripts/deploy.sh'
      }
    }
  }
}
