pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("mpathak1234/my-web-app:latest")
                }
            }
        }
    }
}
