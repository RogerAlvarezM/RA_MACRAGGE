pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh './gradle_jenkins/gradlew clean build -p gradle-jenkins-at08/'
                
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                sh './gradle_jenkins/gradlew clean build -p gradle-jenkins-at08/'

            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}