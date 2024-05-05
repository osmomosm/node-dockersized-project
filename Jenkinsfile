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
                sh 'sudo apt-get install npm'
                sh 'npm test'
            }
        }
        stage("Build"){
            steps{
                sh 'sudo npm install'
            }
        }
    }
}
