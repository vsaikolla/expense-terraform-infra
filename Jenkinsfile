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
                sh '''
                    cd 01-vpc
                    terraform plan
                ''' 
            }
        }
        stage('Apply') { 
            input {
                message "Should we continue?"
                ok "Yes, we should."
            }
            steps {
                sh '''
                    cd 01-vpc
                    terraform apply -auto-approve
                '''  
            }
        }
    }
    post{
        always{
            echo 'i will always say hello'
            deleteDir()
        }
        success{
            echo 'i will run if build is success'
        }
        failure{
            echo 'i will run if build is failure'
        }
    }
}