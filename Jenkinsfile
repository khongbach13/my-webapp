pipeline {
    agent any

    environment {
        DOCKER_CREDENTIALS_ID = 'dockerhub' // ID của credential Docker Hub
        DOCKER_IMAGE_NAME = 'my-tomcat-app' // Tên của Docker image
        DOCKER_TAG = 'latest' // Tag cho Docker image
        DOCKER_REGISTRY = 'docker.io' // Docker Hub registry URL
    }

    stages {
        stage('Checkout') {
            steps {
                // Lấy mã nguồn từ repository
                checkout scm
            }
        }
        
        stage('Build Docker Image') {
            steps {
                script {
                    // Xây dựng Docker image từ Dockerfile
                    def app = docker.build("${DOCKER_IMAGE_NAME}:${DOCKER_TAG}")
                }
            }
        }
        
        stage('Push Docker Image') {
            steps {
                script {
                    // Đăng nhập vào Docker Hub
                    withDockerRegistry([credentialsId: "${DOCKER_CREDENTIALS_ID}", url: "${DOCKER_REGISTRY}"]) {
                        // Tag Docker image với tên đầy đủ
                        docker.image("${DOCKER_IMAGE_NAME}:${DOCKER_TAG}").tag("${DOCKER_IMAGE_NAME}:${DOCKER_TAG}")
                        
                        // Đẩy Docker image lên Docker Hub
                        docker.image("${DOCKER_IMAGE_NAME}:${DOCKER_TAG}").push("${DOCKER_TAG}")
                    }
                }
            }
        }
        
        stage('Cleanup') {
            steps {
                script {
                    // Dọn dẹp các container và images không cần thiết
                    sh 'docker system prune -f'
                }
            }
        }
    }

    post {
        always {
            // Cleanup các container và images không cần thiết
            script {
                sh 'docker system prune -f'
            }
        }
    }
}

