pipeline {
    agent any
    
    stages {
        stage("Checkout") {
            steps {
                checkout scm
            }
        }
        
        stage("Test") {
            steps {
                script {
                    // Install npm using yum
                    sh 'sudo yum install -y npm'
                    
                    // Run npm test
                    sh 'npm test'
                }
            }
        }
        
        stage("Build") {
            steps {
                // Install npm packages
                sh 'npm install'
            }
        }
        
        stage("Build-image") {
            steps {
                // Build Docker image for the node app
                sh 'docker build -t my-node-app:1.0 .'
            }
        }
    }
}
