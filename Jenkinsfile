pipeline{
agent any
stages{
stage('fetch code from github')
{
steps{
git branch: 'main', url: 'https://github.com/Gokarna-k/gokarna.git'
}
}
stage('build phase')
{
steps{
sh 'mvn clean install'
}
}
stage('create image')
{
steps{
sh 'docker build -t app .'
}
}
stage('remove old conatiner')
{
steps{
sh 'docker rm -f app1 || true'
}}
stage('create container')
{
steps{
sh 'docker run -itd --name app1 -p 6000:8080 app'
}
}}
}

