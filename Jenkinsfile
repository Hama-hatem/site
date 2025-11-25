pipeline {
    agent any

    stages {
        stage('Init') {
            steps {
                sh 'export PATH=/usr/local/bin:$PATH'
                sh 'terraform init -backend=false'
            }
        }

        stage('Plan') {
            steps {
                sh 'export PATH=/usr/local/bin:$PATH'
                sh 'terraform plan'
            }
        }

        stage('Apply') {
            steps {
                sh 'export PATH=/usr/local/bin:$PATH'
                sh 'terraform apply -auto-approve'
            }
        }
    }
}
