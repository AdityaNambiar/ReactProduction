pipeline {
    agent any
    environment {
        CI = 'true'
    }
    tools {
	nodejs "node14"
	docker "docker"
    }
    stages {
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
	stage ('Deploy to Docker Hub'){
		steps {
			sh 'docker build -t reactapp:0.1 -f Dockerfile .'
		}
		post { 
		success { 
		    sh 'docker tag projName:0.1 localhost:7009/projName:0.1'
		}
	    }
	}
    }
}
