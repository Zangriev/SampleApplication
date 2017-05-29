node {
    stage 'Checkout'
        checkout scm
        sh 'echo $pwd'
    stage 'Build'
        notifyStarted()
        sh "npm install"
        sh "npm start"
}
