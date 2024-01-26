pipeline {
    agent any 
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
                    sh 'sudo docker build -t nanireddy1729/nanireddy:v3.7 .'
                }
            }
        }
    }
}
