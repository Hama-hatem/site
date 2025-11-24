pipeline {
    agent any

    stages {
        stage('Init') {
            steps {
                sh "cd $WORKSPACE/audi/site && terraform init"
            }
        }

        stage('Plan') {
            steps {
                sh "cd $WORKSPACE/audi/site && terraform plan"
            }
        }

        stage('Apply') {
            steps {
                sh "cd $WORKSPACE/audi/site && terraform apply -auto-approve"
            }
        }
    }
}
