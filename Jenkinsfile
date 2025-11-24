pipeline {
    agent any

    stages {
        stage('Init') {
            steps {
                sh "cd $WORKSPACE/site && terraform init"
            }
        }

        stage('Plan') {
            steps {
                sh "cd $WORKSPACE/site && terraform plan"
            }
        }

        stage('Apply') {
            steps {
                sh "cd $WORKSPACE/site && terraform apply -auto-approve"
            }
        }
    }
}
