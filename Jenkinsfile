pipeline {
    agent any  // Chạy trên bất kỳ agent nào

    environment {
        // Đặt JAVA_HOME nếu cần
        JAVA_HOME = tool name: 'JDK 11', type: 'jdk'
    }

    stages {
        stage('Checkout') {
            steps {
                // Lấy mã nguồn từ repository Git
                checkout scm
            }
        }
        
        stage('Build') {
            steps {
                // Thực hiện lệnh Maven để xây dựng dự án
                sh 'mvn clean install'
            }
        }

        stage('Test') {
            steps {
                // Thực hiện lệnh Maven để chạy các bài kiểm tra
                sh 'mvn test'
            }
        }

        stage('Package') {
            steps {
                // Thực hiện lệnh Maven để đóng gói thành file WAR
                sh 'mvn package'
            }
        }
    }

    post {
        success {
            echo 'Build succeeded!'
        }

        failure {
            echo 'Build failed.'
        }
    }
}

