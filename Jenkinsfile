pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                docker build -t nodejs docker
                docker run --name jenkins-build -p 40000:8080 -v /home/bastien/CleverCloud/:/app nodejs
            }
        }
        stage('Test') {
            steps {
                ip=$( docker inspect -f "{{ .NetworkSettings.IPAddress }}" jenkins-build)
                url='http://'$ip':8080'
                stat=$(curl -I -o /dev/null -s -w '%{http_code}' $url)
                if [ $stat -eq 200 ] 
                then
                    echo "Application déployée avec succès"
                fi
            }
        }
    }
}