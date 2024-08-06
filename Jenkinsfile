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
	always {
            // Các bước sẽ luôn được thực hiện sau khi các bước khác
            echo 'Pipeline finished.'
        }
        success {
            echo 'Pipeline success'
        }
        failure {
            echo 'Pipeline failer.'
        }
    }
}
