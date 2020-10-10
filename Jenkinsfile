pipeline {
    environment{
    registryCredential = 'saurabh06-dockerhub'
    }
    agent none
    stages {
        stage('Build') {
            agent { dockerfile true }
            steps {
                sh 'pwd'
                sh 'npm install'
                sh 'npm run build'
            }
        }
    stage('Deploy'){
        agent any
        steps {
            script {
       docker.withRegistry( '', registryCredential ){
            def customImage = docker.build("saurabh06/midsemproject:${env.BUILD_ID}")
            customImage.push()
                    }    
                }
            }
        }
    }
}