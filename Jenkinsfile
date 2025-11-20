pipeline {
    agent {
        label 'AGENT-1'
    }
    options{
        timeout(time: 30, unit: 'MINUTES')
        disableConcurrentBuilds()
        ansiColor('xterm')
    }
    stages {
        stage('Init') { 
            steps {
                sh '''
                    cd 01-vpc
                    terraform init -reconfigure
                '''
            }
        }
        stage('Plan') { 
            steps {
                sh 'echo this is from test' 
            }
        }
        stage('Apply') { 
            steps {
                sh 'echo this is from deploy'  
            }
        }
    }
    post{
        always{
            echo 'i will always say hello'
        }
        success{
            echo 'i will run if build is success'
        }
        failure{
            echo 'i will run if build is failure'
        }
    }
}