<<<<<<< HEAD
pipeline{
    agent any

    stages{

        stage('fetching code from github') {
            steps{
                git branch: 'main', url: 'https://github.com/Gokarna-k/gokarna.git'
=======
pipeline {

    agent any

    stages {

        stage('fetch code from github') {

            steps {

                git branch: 'main',
                url: 'https://github.com/Gokarna-k/gokarna.git'

>>>>>>> 9faaf7f165184b24ae5c2ce5ae875cf66549ef6e
            }
        }

        stage('build phase') {
            steps{
                sh 'mvn clean install'
=======

            steps {

                sh 'mvn clean install'

>>>>>>> 9faaf7f165184b24ae5c2ce5ae875cf66549ef6e
            }
        }

        stage('create image') {
            steps{
                sh 'docker build -t app1 .'
            }
        }

        stage('remove existing container') {
            steps{
                sh 'docker rm -f app || true'
=======

            steps {

                sh 'docker build -t app .'

            }
        }

        stage('remove old container') {

            steps {

                sh 'docker rm -f app1 || true'

>>>>>>> 9faaf7f165184b24ae5c2ce5ae875cf66549ef6e
            }
        }

        stage('create container') {
            steps{
                sh 'docker run -itd --name app -p 5000:8080 -v v1:/usr/local/tomcat/webapps app1'
            }
        }

    }   // stages closing
=======

            steps {

                sh 'docker run -itd --name app1 -p 600:8080 -v v1:/usr/local/tomcat/webapps \
                app'

            }
        }

    }
>>>>>>> 9faaf7f165184b24ae5c2ce5ae875cf66549ef6e

    post {

        success {
            emailext(
                subject: "SUCCESS: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]'",
                body: """
Build Success

Job Name: ${env.JOB_NAME}
Build Number: ${env.BUILD_NUMBER}
Build URL: ${env.BUILD_URL}
                """,
                to: 'kgokarna789@gmail.com'
            )
        }

        failure {
            emailext(
                subject: "FAILURE: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]'",
                body: """
Build Failed

Job Name: ${env.JOB_NAME}
Build Number: ${env.BUILD_NUMBER}
Build URL: ${env.BUILD_URL}
                """,
                to: 'kgokarna789@gmail.com'
            )
        }
    }
=======

            emailext(

                subject: "Jenkins Build SUCCESS",

                body: """
                Build Success

                Job Name: ${JOB_NAME}
                Build Number: ${BUILD_NUMBER}

                """,

                to: "kgokarna789@gmail.com"

            )

        }

        failure {

            emailext(

                subject: "Jenkins Build FAILURE",

                body: """
                Build Failed

                Job Name: ${JOB_NAME}
                Build Number: ${BUILD_NUMBER}

                Check Jenkins Console Output.

                """,

                to: "kgokarna789@gmail.com"

            )

        }

    }

>>>>>>> 9faaf7f165184b24ae5c2ce5ae875cf66549ef6e
}
