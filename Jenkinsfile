pipeline {
    agent any

    stages {

        stage('Detect Mode') {
            steps {
                script {
                    def tfFile = readFile("${WORKSPACE}/main.tf")

                    if (tfFile.contains('provider "aws"')) {
                        env.TF_MODE = "AWS"
                    } else {
                        env.TF_MODE = "LOCAL"
                    }

                    echo "Terraform Mode: ${env.TF_MODE}"
                }
            }
        }

        stage('Init') {
            steps {
                script {
                    if (env.TF_MODE == "LOCAL") {
                        sh '''
                            cd "$WORKSPACE"
                            rm -f terraform.lock.hcl
                            terraform init -backend=false -get=false
                        '''
                    } else {
                        sh '''
                            cd "$WORKSPACE"
                            terraform init
                        '''
                    }
                }
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
