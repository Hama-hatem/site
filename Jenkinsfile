pipeline {
    agent any

    stages {
        stage('Init') {
            steps {
                sh "cd /var/lib/jenkins/audi && terraform init"
            }
        }

        stage('Plan') {
            steps {
                sh "cd /var/lib/jenkins/audi && terraform plan"
            }
        }

        stage('Apply') {
            steps {
                sh "cd /var/lib/jenkins/audi && terraform apply -auto-approve"
            }
        }
    }
}
