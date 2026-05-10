pipeline {

    agent any

    stages {

        stage('Fetch Code') {
            steps {
                git branch: 'main',
                url: 'https://github.com/Gokarna-k/gokarna.git'
            }
        }

        stage('Build WAR File') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t pixel-forge-app .'
            }
        }

        stage('Remove Old Container') {
            steps {
                sh 'docker rm -f pixel-container || true'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker run -d -p 7000:8080 --name pixel-container pixel-forge-app'
            }
        }
    }
}
