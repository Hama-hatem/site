pipeline {
    agent any

    stages {
        stage('Init') {
            steps {
                sh "cd $WORKSPACE && terraform init"
            }
        }

        stage('Plan') {
            steps {
                sh "cd $WORKSPACE && terraform plan"
            }
        }

        stage('Apply') {
            steps {
                sh "cd $WORKSPACE && terraform apply -auto-approve"
            }
        }
    }
}
