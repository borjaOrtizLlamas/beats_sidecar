pipeline {
   agent any
   	stages {
        stage('login') {
            steps {
                sh 	"aws ecr get-login-password --region eu-west-1 | docker login --username AWS --password-stdin 005269061637.dkr.ecr.eu-west-1.amazonaws.com/easysidecar"
            }
        }

        stage('build') {
            steps {
                sh 	"docker build . -t 005269061637.dkr.ecr.eu-west-1.amazonaws.com/easysidecar:$TAG"
            }
        }

        stage('push to repository') {
            steps {
                sh 	"docker push 005269061637.dkr.ecr.eu-west-1.amazonaws.com/easysidecar:$TAG"
            }
        }
    }
}
0