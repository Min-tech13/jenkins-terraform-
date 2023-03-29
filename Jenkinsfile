
pipeline{

 agent any
//  environment {
//     DOCKERHUB_CREDENTIALS=credentials('dockerhub')
//  }


 stages {

  stage('awscredetials') {

   steps {
    withCredentials([<object of type com.cloudbees.jenkins.plugins.awscredentials.AmazonWebServicesCredentialsBinding>]) {
      sh 'terraform validate main.tf'
    }
   }
  }
  