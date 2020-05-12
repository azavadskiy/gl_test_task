pipeline {  
    environment {
    registry = "azavadskiy/gl_test"
    registryCredential = 'docker_id'
    dockerImage = ''
  } 
   agent any 
   stages {
    stage('Cloning  Git') {
        steps {
            git 'https://github.com/azavadskiy/gl_test.git'
        }    
      } 
    stage('Building image') {
      steps {
        script { 
          dockerImage = docker.build registry
      }
    }
  } 
    stage('Pull Image') {
      steps {
        script {
          docker.withRegistry( '', registryCredential ) {
          dockerImage.push()
      }
    }
  }
}   
    stage('Cleaning up') {
      steps{
            sh '''docker kill $(docker ps -q)'''
            sh '''docker rmi -f $(docker images -a -q)'''
        }
      }
    stage('Deploy services') {
      steps{
            sh "docker run -d -p 80:80 $registry:latest"
        }
      }
    }
  }