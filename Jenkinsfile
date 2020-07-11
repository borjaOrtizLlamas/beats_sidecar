pipeline {
   agent any
   	stages {
        stage('login') {
            steps {
                sh 	"aws ecr get-login-password --region eu-west-1 | docker login --username AWS --password-stdin 005269061637.dkr.ecr.eu-west-1.amazonaws.com/filebeats_unir"
            }
        }

        stage('build') {
            steps {
                sh 	"docker build . -t 005269061637.dkr.ecr.eu-west-1.amazonaws.com/filebeats_unir:${env.BUILD_NUMBER}"
                sh 	"docker tag 005269061637.dkr.ecr.eu-west-1.amazonaws.com/filebeats_unir:${env.BUILD_NUMBER} 005269061637.dkr.ecr.eu-west-1.amazonaws.com/filebeats_unir:latest"

            }
        }

        stage('push to repository') {
            steps {
                sh 	"docker push 005269061637.dkr.ecr.eu-west-1.amazonaws.com/filebeats_unir:${env.BUILD_NUMBER}"
                sh 	"docker push 005269061637.dkr.ecr.eu-west-1.amazonaws.com/filebeats_unir:latest"
            }
        }
    }
}
0