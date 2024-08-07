pipeline {
    agent any

    tools {
        // Đảm bảo rằng Maven và JDK được cấu hình trong Jenkins
        maven 'Maven 3.8.7'  // Thay 'Maven 3.8.4' bằng tên của cài đặt Maven đã cấu hình trong Jenkins
        jdk 'JDK 17'        // Thay 'JDK 17' bằng tên của cài đặt JDK đã cấu hình trong Jenkins
    }
    
    
    stages {

	stage('Checkout') {
            steps {
                // Checkout mã nguồn từ Git
                git url: 'https://github.com/khongbach13/my-webapp.git', branch: 'main'
            }
        }

        stage('Build APP WAR') {
            steps {
                // Thực hiện lệnh Maven để xây dựng dự án
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Xây dựng Docker image từ Dockerfile
                    def app = docker.build("my-tomcat-app:latest")
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    // Chạy Docker container từ image vừa xây dựng
                    docker.image('my-tomcat-app:latest').run('--name tomcatapp -p 8088:8080')
                }
            }
        }
        
        stage('Cleanup') {
            steps {
                script {
                    // Dừng và xóa container cũ (nếu có)
                    sh 'docker stop my-tomcat-app || true'
                    sh 'docker rm my-tomcat-app || true'
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

