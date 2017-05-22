pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                git branch: 'dev', credentialsId: '1', url: ''
                sh 'docker build -t nodejs docker'
                sh 'docker run -d --name jenkins-build -p 40000:8080 -v /home/bastien/CleverCloud/:/app nodejs'
            }
        }
        stage('Test') {
            steps {
                sh 'test.sh'
            }
        }
    }
}