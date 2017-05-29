node {
    stage 'Checkout'
        checkout scm
        sh 'pwd'
        sh 'ls -ls'
    stage 'Build'
        notifyStarted()
        sh "npm install"
        sh "npm start"
}
