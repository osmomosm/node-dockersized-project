pipeline{
    agent any
    stages{
        stage("Checkout"){
            steps{
                Checkoutscm
            }
        }
        stage("Test"){
            steps{
                sh 'sudo npm install'
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
