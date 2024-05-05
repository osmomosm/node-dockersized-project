pipeline{
    agent any
    stages{
        stage("Checkout"){
            steps{
                checkout scm
            }
        }
        stage("Test"){
            steps{
                sh 'sudo yum install npm'
                sh 'npm test'
            }
        }
        stage("Build"){
            steps{
                sh 'sudo npm install'
            }
        stage("Build-image"){
            steps{
                sh 'docker build -t -my-node-app:1.0 .'
            }
        }
    }
}
