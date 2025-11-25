pipeline {
    agent any

    stages {
        stage('Init') {
            steps {
                sh '''
                    cd "$WORKSPACE"
                    rm -f terraform.lock.hcl
                    terraform init -backend=false -get=false
                '''
            }
        }

        stage('Plan') {
            steps {
                sh '''
                    cd "$WORKSPACE"
                    terraform plan
                '''
            }
        }

        stage('Apply') {
            steps {
                sh '''
                    cd "$WORKSPACE"
                    terraform apply -auto-approve
                '''
            }
        }
    }
}
