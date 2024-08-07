pipeline {
    agent any

    stages {
        stage('Test Docker Login') {
            steps {
                script {
                    // Thử đăng nhập vào Docker Hub
                    withDockerRegistry([credentialsId: 'dockerhubv1', url: 'https://hub.docker.com/']) {
                        sh 'docker login -u luuphuong13 -p Phuong13@2000'
                    }
                }
            }
        }
    }
}
