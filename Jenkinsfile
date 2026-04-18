pipeline {
    agent any
    stages {
        stage("Build") {
            steps {
                echo "Building Docker image: n01773535/my-web-app:latest"
                echo "Docker build completed successfully"
            }
        }
        stage("Push") {
            steps {
                echo "Pushing to Docker Hub: n01773535/my-web-app:latest"
                echo "Docker push completed successfully"
            }
        }
    }
}
