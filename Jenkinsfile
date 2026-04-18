pipeline {
    agent any
    environment {
        DOCKER_HUB_CREDS = credentials('docker-hub-credentials')
    }
    stages {
        stage("Build") {
            steps {
                echo "Building Docker image..."
                script {
                    docker.build("n01773535/my-web-app:latest")
                }
            }
        }
        stage("Push") {
            steps {
                echo "Pushing to Docker Hub..."
                script {
                    docker.withRegistry("", DOCKER_HUB_CREDS) {
                        docker.image("n01773535/my-web-app:latest").push()
                        docker.image("n01773535/my-web-app:latest").push("build-${env.BUILD_NUMBER}")
                    }
                }
            }
        }
    }
}
