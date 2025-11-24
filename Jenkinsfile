pipeline {
    agent any

    stages {
        stage('Init') {
            steps {
                sh "cd $WORKSPACE/audi && terraform init"
            }
        }

        stage('Plan') {
            steps {
                sh "cd $WORKSPACE/audi && terraform plan"
            }
        }

        stage('Apply') {
            steps {
                sh "cd $WORKSPACE/audi && terraform apply -auto-approve"
            }
        }
    }
}
