pipeline {
    agent any
    environment {
        DOCKER_HUB_CREDS = credentials('docker-hub-credentials')
    }
    stages {
        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image...'
                script {
                    docker.build("mpathak1234/my-web-app:latest")
                }
            }
        }
        stage('Push to Docker Hub') {
            steps {
                echo 'Pushing to Docker Hub...'
                script {
                    docker.withRegistry('', DOCKER_HUB_CREDS) {
                        docker.image("mpathak1234/my-web-app:latest").push()
                        docker.image("mpathak1234/my-web-app:latest").push('build-\')
                    }
                }
            }
        }
    }
}
