node {

    stage 'Checkout'
    def branch = env.BRANCH_NAME
    echo "current branch is ${branch}"
    checkout scm

	try {
	    stage 'Build'
		notifyStarted()
	    sh "npm install"
	    sh "npm start"
	} 
}