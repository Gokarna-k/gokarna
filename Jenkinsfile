pipeline{
agent any
stages{
stage('fetching code from github')
{
steps{
git branch:'main',url:'https://github.com/Gokarna-k/gokarna.git'
}
}
stage('build phase')
{
steps{
sh 'mvn clean install'
}
}
stage('testing')
{
steps{
echo 'testing is done'
}
}
stage('deploy')
{
steps{
echo 'deployement'
}
}
}
}
