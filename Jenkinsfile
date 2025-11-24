pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Hama-hatem/audi.git'
            }
        }

        stage('Init') {
            steps {
                sh '''
                if [ -d "$WORKSPACE/audi" ]; then
                    cd $WORKSPACE/audi
                    terraform init
                else
                    echo "Folder audi not found!"
                    exit 1
                fi
                '''
            }
        }

        stage('Plan') {
            steps {
                sh '''
                if [ -d "$WORKSPACE/audi" ]; then
                    cd $WORKSPACE/audi
                    terraform plan
                fi
                '''
            }
        }

        stage('Apply') {
            steps {
                sh '''
                if [ -d "$WORKSPACE/audi" ]; then
                    cd $WORKSPACE/audi
                    terraform apply -auto-approve
                fi
                '''
            }
        }
    }
}
