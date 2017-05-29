node {
    stage 'Checkout'
        git branch: '${env.GIT_BRANCH}', credentialsId: '1', url: '${env.GIT_URL}'

    stage 'Build'
        notifyStarted()
        sh "npm install"
        sh "npm start"
}
