
pipeline{

 agent any
 stages {
    stage('init') {
    steps {
        sh 'terraform init'
    }
    }
    stage('plan') {
    steps {
        withCredentials([aws(accessKeyVariable:'AWS_ACCESS_KEY_ID', credentialsId: 'aws', secretKeyVarible: 'AWS_SECRET_ACCESS_KEY')]) {
        sh 'terraform plan '
        }
    }
    }
    stage('terraform apply') {
    steps {
        
        withCredentials([aws(accessKeyVariable:'AWS_ACCESS_KEY_ID', credentialsId: 'aws', secretKeyVarible: 'AWS_SECRET_ACCESS_KEY')]) {
        sh 'terraform apply  -auto-approve '
        }
    }
    }
    stage('terraform destroy') {
    input {
    message 'Are you sure to destroy all app'
    id 'envId'
    ok 'Submit'
    parameters {
        choice choices: ['no', 'yes', 'minnn', 'destroy'], name: 'proceed'
    }
    }
    steps {
        withCredentials([aws(accessKeyVariable:'AWS_ACCESS_KEY_ID', credentialsId: 'aws', secretKeyVarible: 'AWS_SECRET_ACCESS_KEY')]) {
         sh 'terraform ${proceed} -auto-approve '
        }
    }
    }
 }
}
  
