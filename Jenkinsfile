node {
    stage "Prepare environment"
        checkout scm
        def environment  = docker.build 'readytalk/nodejs'

    stage "Test URL"
        sh 'sh test.sh'
        
    stage "Cleanup"
        deleteDir()
}