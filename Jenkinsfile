pipeline {
    agent any

    stages {

        stage('Code') {
            steps {
                git 'https://github.com/Ajaykumartanna/Docker-first-pipeline.git'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t image1:latest .'
            }
        }

        stage('Stop Old Container') {
            steps {
                sh 'docker stop mycontainer || true'
            }
        }

        stage('Remove Old Container') {
            steps {
                sh 'docker rm mycontainer || true'
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker run -d --name mycontainer -p 1111:80 image1:latest'
            }
        }
    }
}
