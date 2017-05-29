node {
    stage 'Checkout'
        checkout scm
        sh 'pwd'
        sh 'ls -ls'
    stage 'Build'
        sh "npm install"
        sh "npm start"
}
