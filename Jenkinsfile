
pipeline{

 agent any
//  environment {
//     DOCKERHUB_CREDENTIALS=credentials('dockerhub')
//  }

  stage('init') {

   steps {
     sh 'terraform init'
   }
  }
  stage('plan') {

   steps {
     sh 'terraform plan main.tf'
   }
  }


  stage('awscredetials') {

   steps {
    withCredentials([<object of type com.cloudbees.jenkins.plugins.awscredentials.AmazonWebServicesCredentialsBinding>]) {
      sh 'terraform apply -auto-approve main.tf '
    }
   }
  }
}
  