pipeline {
    agent any

    environment {
        TF_WORKDIR = "/home/ubuntu/mytf"
    }

    stages {
        stage('Terraform Init') {
            steps {
                dir("${TF_WORKDIR}") {
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                dir("${TF_WORKDIR}") {
                    sh 'terraform plan'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                dir("${TF_WORKDIR}") {
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }
}
