pipeline {
    agent any
    environment {
        CI = 'true'
    }
    stages {
        stage ('Checkout') {
            steps {
                checkout scm
            }     
        }
        stage ('Environment') {
            steps {
                sh 'node -v'
                sh 'npm i'
            }
        }
        stage('Test') {
            steps {
                sh 'npm run test'
            }
        }
        stage('Build'){
            steps {
                sh 'npm run build'
            }
        }
    }
}