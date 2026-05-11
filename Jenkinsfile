pipeline {

    agent any

    stages {

        stage('fetch code from github') {

            steps {

                git branch: 'main',
                url: 'https://github.com/Gokarna-k/gokarna.git'

            }
        }

        stage('build phase') {

            steps {

                sh 'mvn clean install'

            }
        }

        stage('create image') {

            steps {

                sh 'docker build -t app .'

            }
        }

        stage('remove old container') {

            steps {

                sh 'docker rm -f app1 || true'

            }
        }

        stage('create container') {

            steps {

                sh 'docker run -itd --name app1 -p 600:8080 -v v1:/usr/local/tomcat/webapps \
                app'

            }
        }

    }

    post {

        success {

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

}
