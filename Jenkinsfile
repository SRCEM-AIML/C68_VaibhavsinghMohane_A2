pipeline {
    agent any

    environment {
        DOCKER_HUB_USER = 'raven2678'
        IMAGE_NAME = 'studentproject-app'
    }

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/SRCEM-AIML/C68_VaibhavsinghMohane_A2.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh "docker build -t ${IMAGE_NAME} ."
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    sh "docker stop ${IMAGE_NAME} || true"
                    sh "docker rm ${IMAGE_NAME} || true"
                    sh "docker run -d --name ${IMAGE_NAME} -p 8000:8000 ${IMAGE_NAME}"
                }
            }
        }

        stage('Push to Docker Hub') {
            steps {
                withDockerRegistry([credentialsId: 'docker-hub-credentials', url: 'https://index.docker.io/v1/']) {
                    sh 'docker tag studentproject-app raven2678/studentproject-app'
                    sh 'docker push raven2678/studentproject-app'
                }
            }
        }
    }
}

