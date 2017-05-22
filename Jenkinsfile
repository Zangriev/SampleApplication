node {
    stage 'Checkout'
        def branch = env.BRANCH_NAME
        git branch: 'GIT_BRANCH', credentialsId: '1', url: 'GIT_URL'

    stage 'Build'
        notifyStarted()
        sh "npm install"
        sh "npm start"
}