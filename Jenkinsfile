pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'master', url: 'https://github.com/mohanevs/StudentProject.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t studentproject-app .'
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    sh 'docker run -d -p 8000:8000 studentproject-app'
                }
            }
        }

        stage('Push to Docker Hub') {
            steps {
                script {
                    sh 'docker login -u vaibhavmohane226@gmail.com -p vaibhav@123'
                    sh 'docker tag studentproject-app vaibhavmohane226@gmail.com/studentproject-app'
                    sh 'docker push vaibhavmohane226@gmail.com/studentproject-app'
                }
            }
        }
    }
}
