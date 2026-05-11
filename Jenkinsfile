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

                sh 'docker run -itd --name app1 -p 6000:8080 app'

            }
        }

    }

    post {

        success {

            emailext(

                subject: "Jenkins Build Success",

                body: """
                Build completed successfully.

                Job Name: ${JOB_NAME}
                Build Number: ${BUILD_NUMBER}

                """,

                to: "kgokarna789@gmail.com"

            )

        }

        failure {

            emailext(

                subject: "Jenkins Build Failed",

                body: """
                Build failed.

                Job Name: ${JOB_NAME}
                Build Number: ${BUILD_NUMBER}

                Check Jenkins console output for errors.

                """,

                to: "kgokarna789@gmail.com"

            )

        }

    }

}
