pipeline {
    agent any

    stages {
        stage('Init') {
            steps {
                sh "cd /var/lib/jenkins/mytf && terraform init"
            }
        }
        stage('Plan') {
            steps {
                sh \"cd /var/lib/jenkins/mytf && terraform plan\"
            }
        }
        stage('Apply') {
            steps {
                sh \"cd /var/lib/jenkins/mytf && terraform apply -auto-approve\"
            }
        }
    }
}
