pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                // Clean workspace before checking out code
                deleteDir()

                // Checkout your code from Git
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/niketrana/test_niket.git']]])
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Define the Dockerfile path (if it's not in the root of your repo)
                    def dockerfilePath = './Dockerfile'

                    // Build the Docker image
                    def dockerImage = docker.build('niket-image:v1.0', "-f ${dockerfilePath} .")

                    // Push the Docker image to a registry if needed
                    // dockerImage.push()
                }
            }
        }

        stage('Additional Steps') {
            steps {
                // You can add more build or deployment steps here
            }
        }
    }

    post {
        success {
            echo 'Docker image build succeeded!'
        }

        failure {
            echo 'Docker image build failed!'
        }
    }
}
