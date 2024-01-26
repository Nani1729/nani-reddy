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
        stage('docker login') {
            steps {
                script {
                    withCredentials([usernamePassword(credentialsId: 'docker-hub', passwordVariable: 'manoj', usernameVariable: 'nani')]) {
                sh 'sudo docker login --username $nani --password $manoj'
                    }
                }
            }
              }        

        stage('docker push') {
            steps {
                script {
                    sh 'sudo docker push $DOCKER_IMAGE_NAME:$DOCKER_IMAGE_TAG'
                }
            }
        }
        stage('dockerrun container') {
            steps {
                script {
                    sh 'sudo docker service create --name tomcar-service --mount type=volume,source=my-tomcat-volume,target=/usr/local/tomcat/webapps -p 8080:8080 $DOCKER_IMAGE_NAME:$DOCKER_IMAGE_TAG'
                }
            }
        }           
    }
}
