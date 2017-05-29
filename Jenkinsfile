node {
    stage 'Checkout'
        git branch: '${GIT_BRANCH}', credentialsId: '1', url: ''

    stage 'Build'
        notifyStarted()
        sh "npm install"
        sh "npm start"
}
