pipeline {
    agent any

    tools {
        jdk 'JDK17'
    }

    environment {
        DOCKER_IMAGE = "lakshmanan1996/banking-app"
    }

    stages {

        stage('Checkout Code') {
            steps {
                git 'https://github.com/Lakshmanan1996/BankingSystem.git'
            }
        }

        stage('Build Java Application') {
            steps {
                sh '''
                echo "Compiling Java source files..."
                rm -rf bin
                mkdir -p bin
                javac -d bin $(find src -name "*.java")
                '''
            }
        }

        stage('Verify Compiled Classes') {
            steps {
                sh '''
                echo "Verifying compiled .class files..."
                ls -R bin
                '''
            }
        }

        stage('SonarQube Analysis') {
            steps {
                script {
                    def scannerHome = tool 'sonar-scanner'
                    withSonarQubeEnv('sonarqube') {
                        sh """
                        ${scannerHome}/bin/sonar-scanner \
                        -Dsonar.projectKey=banking \
                        -Dsonar.sources=src \
                        -Dsonar.exclusions=**/*.java
                        """
                    }
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $DOCKER_IMAGE:latest .'
            }
        }

        stage('Push Docker Image') {
            steps {
                withCredentials([usernamePassword(
                    credentialsId: 'dockerhub-creds',
                    usernameVariable: 'DOCKER_USER',
                    passwordVariable: 'DOCKER_PASS'
                )]) {
                    sh '''
                    echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin
                    docker push $DOCKER_IMAGE:latest
                    '''
                }
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                sh '''
                kubectl apply -f banking-deployment.yaml
                kubectl apply -f banking-service.yaml
                '''
            }
        }
    }

    post {
        success {
            echo "✅ Pipeline completed successfully!"
        }
        failure {
            echo "❌ Pipeline failed. Check logs for details."
        }
    }
}
