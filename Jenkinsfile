node {
    stage "Prepare environment"
        checkout scm
        def environment  = docker.build 'jenkins-node'

    stage "Test URL"
        sh 'sh test.sh'
        
    stage "Cleanup"
        deleteDir()
}