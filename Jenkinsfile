pipeline {
    agent any
    environment {
        DOCKER_IMAGE_NAME = 'manojreddy12/docker'
        DOCKER_IMAGE_TAG = 'v6.7'
    }
    stages {
        stage('docker images') {
            steps {
                script {
                    sh 'sudo docker images'
                }
            }
        }
        stage('docker build') {
            steps {
                script {
                    sh 'sudo docker build -t $DOCKER_IMAGE_NAME:$DOCKER_IMAGE_TAG .'
                }
            }
        }
    }
}
