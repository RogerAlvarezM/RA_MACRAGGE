pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh './gradle-jenkins-at08/gradlew clean build -p gradle-jenkins-at08'                   
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                sh './gradle-jenkins-at08/gradlew test -p gradle-jenkins-at08'   
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}