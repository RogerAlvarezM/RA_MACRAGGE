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
                sh './gradle-jenkins-at08/gradlew jacocoTestReport -p gradle-jenkins-at08'                                 
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                sh './gradle-jenkins-at08/gradlew jar -p gradle-jenkins-at08'                
            }
        }
    }

    post {
        always {
            archiveArtifacts artifacts: 'gradle-jenkins-at08/**/gradle-wrapper.jar', fingerprint: true
            junit 'build/reports/**/*.xml'
        }
    }
}
