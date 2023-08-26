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
                sh 'scp url.sh raza@192.168.108.132:/home/raza'
                sh 'ssh raza@192.168.108.132'
                sh 'crontab <<EOF'
                sh '*/5 * * * * /home/raza/url.sh'
                sh 'EOF'
            }
    }
}
}
