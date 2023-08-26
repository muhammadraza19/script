pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'git@github.com:muhammadraza19/script.git'
            }
        }
        // Add more stages for your build and deployment process
         stage('Execute Shell Commands') {
            steps {
                sh 'cd /var/lib/jenkins/workspace/cronjob/'
                sh "scp url.sh raza@server:/home/raza"
                sh 'ssh raza@server'
                sh 'bash cron.sh'
            }
    }
}
}
