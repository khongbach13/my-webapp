pipeline {
    agent any
    
    
    tools {
        // Chỉ định phiên bản Maven cần sử dụng
        maven 'Maven 3.8.7'
    }
    stages {
        stage('Checkout') {
            steps {
                // Kiểm tra mã nguồn từ repository
                checkout scm
            }
        }
        stage('Build') {
            steps {
                // Xây dựng dự án với Maven
                sh 'mvn clean package'
            }
        }
    }
    post {
        success {
            echo 'Pipeline thành công!'
        }
        failure {
            echo 'Pipeline that bại.'
        }
    }
}
