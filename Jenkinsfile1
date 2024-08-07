pipeline {
    agent any  // Chạy pipeline trên bất kỳ agent nào có sẵn

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

        stage('Build') {
            steps {
                // Thực hiện lệnh Maven để xây dựng dự án
                sh 'mvn clean package'
            }
        }

        stage('Archive') {
            steps {
                // Lưu trữ các artefacts (như file JAR hoặc WAR) để tải xuống từ Jenkins
                archiveArtifacts artifacts: '**/target/*.war', allowEmptyArchive: true
            }
        }
    }

    post {
        success {
            echo 'Build succeeded!'
        }

        failure {
            echo 'Build failed!'
        }
    }
}

