pipeline {
    agent any

    stages {

        stage('Clone Repository') {
            steps {
                git 'https://github.com/osborn-68/Devops-project.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t devops-nginx .'
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker run -d -p 8080:80 devops-nginx'
            }
        }

    }
}
