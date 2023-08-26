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
                sh '''
                scp /var/lib/jenkins/workspace/cronjob/url.sh raza@server:/home/raza
                ssh raza@server
                crontab <<EOF
                */5 * * * * /home/raza/url.sh
                EOF
                '''
            }
    }
}
}
